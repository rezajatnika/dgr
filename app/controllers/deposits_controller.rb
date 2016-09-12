class DepositsController < ApplicationController
  # GET /deposits/1
  def show
    @deposit = Deposit.find(params[:id])
  end
end
