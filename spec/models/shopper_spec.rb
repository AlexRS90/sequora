require 'rails_helper'

RSpec.describe Shopper, type: :model do
  before do
    Shopper.create(
      name: 'Olive Thompson',
      email: 'olive.thompson@not_gmail.com',
      cif: '411111111Z'
    )
  end

  it 'expects name to not be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'has 1 record' do
    expect(Shopper.count).to eq(1)
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
