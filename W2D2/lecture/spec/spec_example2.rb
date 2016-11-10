require_relative 'spec_helper'

describe "Cart" do
  
  describe '#initialize' do
    it "should start with empty list of products" do
      cart = Cart.new
      expect(cart.products).to eql []
      # expect(cart.products).to be_empty
      # expect(cart.products.length).to eql 0
      # expect(cart.products).to be nil
    end
  end

  describe '#add_product' do
    it "should add product to the list of products" do 
      product = Product.new('Book', 12)
      cart = Cart.new
      cart.add_product(product)
      expect(cart.products).to include product
      # expect(cart.products.include?(product))to eq true
    end
  end

  describe '#total_with_tax' do

    before :each do 
      @cart = Cart.new
    end

    it 'should return 0 if cart is empty' do
      expect(@cart.total_with_tax).to eql 0
    end

    it 'should return total with tax if there are products' do
      book = Product.new('Book', 14)
      pencil = Product.new('Pencil', 1)
      @cart.add_product(book)
      @cart.add_product(pencil)
      expect(@cart.total_with_tax).to eql 16
    end
  end

end