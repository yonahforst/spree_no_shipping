require "spec_helper"

describe "Checkout steps" do
  
  stub_authorization!
 
  
  it "removes " do
    product = create(:product)
    
    visit spree.edit_admin_general_settings_path    
    expect(page).to_not have_text('SHIPPING CATEGORIES')
    expect(page).to_not have_text('SHIPPING METHODS')
  end
end