require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is not valid without a name" do
    category = Category.create(:name => 'name')
    product = category.products.create({
      price: 99,
      quantity: 1
    })
    expect(product).to_not be_valid
  end
  
  it "is not valid without a price" do
    category = Category.create(:name => 'name')
    product = category.products.create({
      name: 'some name',
      quantity: 1
    })
    expect(product).to_not be_valid
  end

  it "is not valid without a quantity" do
    category = Category.create(:name => 'name')
    product = category.products.create({
      name: 'some name',
      price: 99,
    })
    expect(product).to_not be_valid
  end

  it "is not valid without a category" do
    
    product = Product.new({
      name: 'some name',  
      price: 99,
      quantity: 1,
      category: nil
    })
    expect(product).to_not be_valid
  end

end
