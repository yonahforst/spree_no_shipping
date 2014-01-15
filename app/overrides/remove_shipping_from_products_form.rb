Deface::Override.new(
  :virtual_path  => "spree/admin/products/new",
  :remove => "erb[loud]:contains(' f.field_container :shipping_category do')",
  :closing_selector => "erb[silent]:contains('end')",
  :name          => "remove_shipping_method_from_products_new"
  )
  
Deface::Override.new(
  :virtual_path  => "spree/admin/products/_form",
  :remove => "erb[loud]:contains(' f.field_container :shipping_categories do')",
  :closing_selector => "erb[silent]:contains('end')",
  :name          => "remove_shipping_method_from_product_form"
  )
  
Deface::Override.new(
  :virtual_path  => "spree/admin/products/_form",
  :remove => "ul#shipping_specs",
  :name          => "remove_shipping_specs_from_product_form"
  )