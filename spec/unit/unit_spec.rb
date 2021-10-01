# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'Nikolas Turman', price: 8.90, published_date: '10-06-1999')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
    subject.title = 'harry potter'
  end

  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
    subject.author = 'Nikolas Turman'
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
    subject.price = 8.90
  end

  it 'is not valid without a published date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end
