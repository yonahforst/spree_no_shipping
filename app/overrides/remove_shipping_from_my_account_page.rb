Deface::Override.new(
  :virtual_path  => "spree/users/show",
  :remove => "th.order-shipment-state",
  :name          => "remove_shipping_header_from_my_account"
  )

Deface::Override.new(
  :virtual_path  => "spree/users/show",
  :remove => "td.order-shipment-state",
  :name          => "remove_shipping_row_from_my_account"
  )
