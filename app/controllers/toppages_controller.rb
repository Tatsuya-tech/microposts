class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build  # form_with 用
      @microposts = current_user.microposts.order(id: :desc).page(params[:page])
    end
  end
  
  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end
