Deface::Override.new(
  :virtual_path  => "spree/admin/shared/_configuration_menu",
  :remove => "erb[loud]:contains('configurations_sidebar_menu_item Spree.t(:shipping_methods), admin_shipping_methods_path')",
  :name          => "remove_shipping_methods_from_products_new"
  )
  
Deface::Override.new(
  :virtual_path  => "spree/admin/shared/_configuration_menu",
  :remove => "erb[loud]:contains('configurations_sidebar_menu_item Spree.t(:shipping_categories), admin_shipping_categories_path')",
  :name          => "remove_shipping_categories_from_products_new"
  )
