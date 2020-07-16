class AccountsController < ApplicationController
  before_action :authenticate_account!

  def index
    @posts = Post.active
  end

  def show
    @account = Account.find_by_username(params[:username])
  end

end
