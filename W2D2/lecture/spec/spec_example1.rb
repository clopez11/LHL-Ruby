require_relative 'spec_helper'

describe "Product" do

  describe '#new' do
    it 'works' do
      product = Product.new('Book', 12)
      expect(product.name).to eq('Book')
      expect(product.price).to eq(12)
    end

    it "throws exception if name or price is missing" do
      expect { 
        product = Product.new
        raise "need name or price"
      }.to raise_error ArgumentError
    end
  end

end