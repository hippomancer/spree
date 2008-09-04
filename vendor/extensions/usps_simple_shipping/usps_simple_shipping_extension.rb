# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class UspsSimpleShippingExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/usps_simple_shipping"

  # define_routes do |map|
  #   map.namespace :admin do |admin|
  #     admin.resources :whatever
  #   end  
  # end
  
  def activate
    # admin.tabs.add "Usps Simple Shipping", "/admin/usps_simple_shipping", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Usps Simple Shipping"
  end
  
end