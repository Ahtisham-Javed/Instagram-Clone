class AccountsController < ApplicationController
  before_action :authenticate_account!

  def index
    @posts = Post.active
    @follower_suggestions = Account.where.not(id: current_account.id)
  end

  def show
    @account = Account.find_by_username(params[:username])
  end

  def follow_account
    account_id = params[:follow_account]
  end

end
