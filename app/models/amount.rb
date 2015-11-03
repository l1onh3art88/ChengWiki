class Amount < ActiveRecord::Base
  def default
    amount == 1500
    return amount  
  end
  
end
