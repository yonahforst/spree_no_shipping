Deface::Override.new(
  :virtual_path  => "spree/admin/orders/index",
  :replace => "erb[loud]:contains(\"sort_link @search, :shipment_state, I18n.t(:shipment_state, :scope => 'activerecord.attributes.spree/order')\")",
  :text => "<%= sort_link @search, :hours_remaining, 'Hours remaining' %>",  
  :name          => "remove_shipping_method_from_products_new"
  )
#   
# Deface::Override.new(
#   :virtual_path  => "spree/admin/products/_form",
#   :remove => "erb[loud]:contains(' f.field_container :shipping_categories do')",
#   :closing_selector => "erb[silent]:contains('end')",
#   :name          => "remove_shipping_method_from_product_form"
#   )
#   
# Deface::Override.new(
#   :virtual_path  => "spree/admin/products/_form",
#   :remove => "ul#shipping_specs",
#   :name          => "remove_shipping_specs_from_product_form"
#   )
# 
