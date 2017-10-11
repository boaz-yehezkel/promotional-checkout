require 'minitest/spec'
require 'minitest/autorun'

#High-level test of the entire system
describe "PromotionalCheckout" do

  #setup the resources needed to run these tests
  before do

    #TODO: Swap this to use FactoryGirl instead of defining objects by hand

    @prod_001 = Product.new('001','Lavender Heart',925)
    @prod_002 = Product.new('002','Personalised cufflinks',4500)
    @prod_003 = Product.new('003','Kids T-shirt',1995)

  end

  it "returns the checkout total with the correct promotional discounts applied" do


    checkout_test_cases = [{:basket => [@prod_001,@prod_002,@prod_003], :expected_result => '£66.78'},{:basket => [@prod_001,@prod_003,@prod_001], :expected_result => '£36.95'},{:basket => [@prod_001,@prod_002,@prod_001,@prod_003], :expected_result => '£73.76'}]

    checkout_test_cases.each do |test_case|
      #co = Checkout.new(promotional_rules)
      #test_case[:basket].each {|product_item| co.scan(item)}
      #price = co.total 
      #price.must_equal test_case[:expected_result]
    end

  end

end
