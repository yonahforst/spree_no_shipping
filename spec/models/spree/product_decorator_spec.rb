require 'spec_helper'

describe Spree::Product do
  describe "#shipping_category_id" do
    
    it 'assigns the default shipping category' do
      shipping_category = create(:shipping_category, name: 'default')
      product = create(:product, shipping_category_id: nil) 
      
      product.shipping_category_id.should eq(shipping_category.id)
    end
    
    it "creates a default shipping category if one doesnt exist" do
      expect{
        create(:product, shipping_category_id: nil)        
      }.to change{Spree::ShippingCategory.count}.by(1)
      
      Spree::ShippingCategory.last.name.should eq('default')
    end
    
    it 'does nothing if shipping_category is already set' do
      expect{
        create(:product, shipping_category_id:99)        
      }.to change{Spree::ShippingCategory.count}.by(0)
      
      Spree::Product.last.shipping_category_id.should eq(99)
    end
      
  end
end
    

