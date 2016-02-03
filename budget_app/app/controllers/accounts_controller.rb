class AccountsController < ApplicationController
  before_action :set_accounts
  before_action :set_account, only: [:edit, :update, :destroy]

  def new
  end

  def create
    @account = Account.new(account_params)

    @account.save
    redirect_to accounts_path

  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
    @account.destroy
    redirect_to accounts_path
  end

  private
  def set_accounts
    @accounts = current_user.accounts
  end
  
  def set_account
    @account = Account.find(params[:id])
  end

  def account_params
    params[:account][:user_id] = current_user.id if params[:account].present?
    params.require(:account).permit(:name, :description, :user_id)
  end

end
