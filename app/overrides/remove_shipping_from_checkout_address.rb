Deface::Override.new(
  :virtual_path  => "spree/checkout/_address",
  :remove => "[data-hook='shipping_fieldset_wrapper']",
  :name          => "remove_shipping_from_checkout_address"
  )
