# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class UspsSimpleShippingExtension < Spree::Extension
  version "1.0"
  description ""
  
  url "http://github.com/mattly/spree_usps_simple_shipping"

  define_routes do |map|
    map.namespace :admin do |admin|
      admin.resource :usps_shipping, :controller => 'UspsShipping'
    end  
  end
  
  def activate
    # admin.tabs.add "Usps Simple Shipping", "/admin/usps_simple_shipping", :after => "Layouts", :visibility => [:all]
    
    Order.class_eval do
      
    end
    
    Admin::ConfigurationsController.class_eval do
      before_filter :add_shipping_rate_links, :only => :index
      def add_shipping_rate_links
        @extension_links << {:link => admin_usps_shipping_path, :link_text => 'USPS Shipping', :description => 'Setup real-time shipping rate quotes via the USPS'}
      end
    end
  end
  
  def deactivate
    # admin.tabs.remove "Usps Simple Shipping"
  end
  
end