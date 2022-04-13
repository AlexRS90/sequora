require 'rails_helper'

RSpec.describe Merchant, type: :model do
  before do
    Code.create(
      name: 'Treutel, Schumm and Fadel',
      email: 'info@treutel-schumm-and-fadel.com',
      cif: 'B611111111'
    )
  end

  it 'expects name to not be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'has 1 record' do
    expect(Merchant.count).to eq(1)
  end

  it 'expects email to not be empty' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'expects cif to not be empty' do
    subject.cif = nil
    expect(subject).to_not be_valid
  end
end
