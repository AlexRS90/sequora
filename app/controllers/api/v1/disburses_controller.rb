class Api::V1::DisbursesController < ApplicationController
  def index
    merchants = Merchant.all
    render json: { status: 'success', data: merchants }, status: 200
  end

  def show
    merchant = Merchant.where(id: params[:merchant_id])
    if merchant.any?
      render json: { statu: 'success', data: merchant }, status: 200
    else
      render json: {}, status: :not_found
    end
  end
end
