class Admin::UspsShippingController < Admin::BaseController
  resource_controller
  before_filter :load_data
  
  require_role :admin
  
  update.response do |wants|
    wants.html { redirect_to collection_url }
  end
  
  create.response do |wants|
    wants.html { redirect_to collection_url }
  end
    
  private 
  
  def load_data
    
  end
end
