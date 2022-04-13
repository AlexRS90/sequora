class Api::V1::DisbursesController < ApplicationController
  def index
    render json: { hola: 'pumas' }
  end

  def show
  end
end
