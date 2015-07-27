Deface::Override.new(
  :virtual_path  => "spree/admin/shared/_configuration_menu",
  :remove => "erb[loud]:contains('configurations_sidebar_menu_item Spree.t(:shipping_methods)')",
  :name          => "remove_shipping_methods_from_products_new"
  )
  
Deface::Override.new(
  :virtual_path  => "spree/admin/shared/_configuration_menu",
  :remove => "erb[loud]:contains('configurations_sidebar_menu_item Spree.t(:shipping_categories)')",
  :name          => "remove_shipping_categories_from_products_new"
  )
