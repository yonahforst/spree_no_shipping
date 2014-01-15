Deface::Override.new(
  :virtual_path  => "spree/admin/products/new",
  :remove => "erb[loud]:contains(' f.field_container :shipping_category do')",
  :closing_selector => "erb[silent]:contains('end')",
  :name          => "remove_shipping_from_products_new"
  )
  
Deface::Override.new(
  :virtual_path  => "spree/admin/products/_form",
  :remove => "erb[loud]:contains(' f.field_container :shipping_categories do')",
  :closing_selector => "erb[silent]:contains('end')",
  :name          => "remove_shipping_from_products_new"
  )