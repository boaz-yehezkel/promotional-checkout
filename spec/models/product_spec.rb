require 'minitest/spec'
require 'minitest/autorun'

require './lib/promotional_checkout/models/product.rb'

describe Product do

  before do
    @product = Product.new("001","Test Product",1000)

  end

  describe "when initalised" do

    it "cannot be initialised without arguments" do

      assert_raises ArgumentError do
        Product.new
      end

    end

  end

  describe "when retrieving object attributes" do

    it "can retrieve the product code" do
      @product.product_code.must_equal "001"
    end

    it "can retrieve the product name" do
      @product.name.must_equal "Test Product"
    end

    it "can retrieve the product price" do
      @product.price.must_equal 1000
    end

  end

end
