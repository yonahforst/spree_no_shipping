Spree::Order.class_eval do
  #replace :delivery to any other state 
  checkout_flow do
    go_to_state :address
    go_to_state :payment
    go_to_state :confirm
    go_to_state :complete
  end  
end