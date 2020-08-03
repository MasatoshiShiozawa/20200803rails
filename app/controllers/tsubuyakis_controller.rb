class TsubuyakisController < ApplicationController
  before_action :set_tsubuyaki, only: [:timestamp, :show, :edit, :update, :destroy]
  def index
    @tsubuyaki = Tsubuyaki.new
    @tsubuyakis = Tsubuyaki.all
  end
  def create
    @tsubuyaki = Tsubuyaki.new(tsubuyaki_params)
    if params[:back]
      render :new
    else
      if @tsubuyaki.save
        redirect_to tsubuyakis_path, notice: "つぶやきを作成しました！"
      else
        render :new
      end
    end
  end
  def update
    respond_to do |format|
      if @tsubuyaki.update(tsubuyaki_params)
        format.html { redirect_to @tsubuyaki, notice: 'つぶやきを更新しました！' }
      else
        format.html { render :edit }
      end
    end
  end
  def destroy
    @tsubuyaki.destroy
    respond_to do |format|
      format.html { redirect_to tsubuyakis_url, notice: 'つぶやきを削除しました！' }
    end
  end
  def confirm
    @tsubuyaki = Tsubuyaki.new(tsubuyaki_params)
    render :new if @tsubuyaki.invalid?
  end
  private
  def set_tsubuyaki
    @tsubuyaki = Tsubuyaki.find(params[:id])
  end
  def tsubuyaki_params
    params.fetch(:tsubuyaki, {}).permit(:content)
  end
end
