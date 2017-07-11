class AccountsController < ApplicationController
  before_action :authorize

  def index
    @accounts = Account.all
  end

  def new
    @account = @current_user.accounts.new
  end

  def create
    @account = @current_user.accounts.new(account_params)
    if @account.save
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to '/'
  end
end
