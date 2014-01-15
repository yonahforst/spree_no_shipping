require "spec_helper"

describe "Checkout steps" do
  
  stub_authorization!
 
  
  it "removes delivery step from checkout" do
    product = create(:product)
    
    visit spree.product_path(product)
    click_button 'add-to-cart-button'
    save_and_open_page
    click_button 'checkout-link'
    
    expect(page).to_not have_test('Shipping Address')
    expect(page).to_not have_test('Delivery')
    
    fill_in_address
    click_button 'Save and Continue'
    
    fill_in_payment
    click_button 'Save and Continue'
    
    expect(page).to_not have_test('Shipping Address')
    expect(page).to_not have_test('Delivery')
    
    click_button 'Place Order'
    
  end
end