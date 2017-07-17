require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }
  it { should belong_to :product }

   it 'saves reviews author and description' do
     product = FactoryGirl.create(:product)
     review = FactoryGirl.create(:review, :author => 'Bob', :content => 'Great when grilled.', :product_id => product.id)
     review.content.should eq 'Great when grilled.'
   end
end
