class BillsController < ApplicationController
  before_action :set_bill, only: [:edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
    @bill = Bill.new(bill_params)

    @bill.save
    redirect_to bills_path
  end

  def edit
  end

  def update
  end

  def destroy
    @bill.destroy
    redirect_to bills_path
  end

  private

  def bill_params
    params[:bill][:user_id] = current_user.id if params[:bill].present?
    params[:bill][:due] = Date.strptime(params[:bill][:due], '%m/%d/%Y') if params[:bill].present?
    params.require(:bill).permit(
      :id,
      :name,
      :url,
      :auto_withdraw,
      :username,
      :user_id,
      :alert_within,
      :balance,
      :due
    )
  end

  def set_bill
    @bill = Bill.find(params[:id])
  end

end
