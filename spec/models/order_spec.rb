require 'rails_helper'

RSpec.describe Order, type: :model do
  before do
    Order.create(
      merchant_id: 25,
      shopper_id: 3351,
      amount: 61.74,
    )
  end

  it 'expects merchant_id to not be empty' do
    subject.merchant_id = nil
    expect(subject).to_not be_valid
  end

  it 'has 1 record' do
    expect(Merchant.count).to eq(1)
  end

  it 'expects shopper_id to not be empty' do
    subject.shopper_id = nil
    expect(subject).to_not be_valid
  end

  it 'expects amount to not be empty' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'expects shopper_id to be a number' do
    subject.shopper_id = 213
    expect(subject).to be_valid
  end

  it 'expects merchant_id to be a number' do
    subject.merchant_id = 'hello'
    expect(subject).to_not be_valid
  end
end
