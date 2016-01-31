class AccountsController < ApplicationController
  before_action :set_accounts

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
  end

  private
  def set_accounts
    @accounts = current_user.accounts
  end

  def account_params
    params[:account][:user_id] = current_user.id if params[:account].present?
    params.require(:account).permit(:name, :description, :user_id)
  end

end
