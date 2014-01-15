module Spree
  Product.class_eval do
    before_validation :set_to_default_shipping

    def set_to_default_shipping
      unless self.shipping_category_id.present?
        shipping_category = Spree::ShippingCategory.where(name: 'default').first_or_create
        self.shipping_category_id = shipping_category.id
      end
    end

  end
end