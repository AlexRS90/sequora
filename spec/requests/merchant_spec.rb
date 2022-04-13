require 'rails_helper'

RSpec.describe 'Merchant', type: :request do
  describe 'GET api/v1/week/:week/merchant/:merchant_id' do
    it 'returns total disbursements for a given merchant' do
      Merchant.create(
        name: 'Treutel, Schumm and Fadel',
        email: 'info@treutel-schumm-and-fadel.com',
        cif: 'B611111111'
      )

      Shopper.create(
        name: 'Olive Thompson',
        email: 'olive.thompson@not_gmail.com',
        cif: '411111111Z'
      )

      Order.create(
        merchant_id: 1,
        shopper_id: 1,
        amount: 61.74,
      )

      get '/api/v1/week/1/merchant/1'
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body).size).to eql(1)
    end
  end
end