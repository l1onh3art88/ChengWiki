class Wiki < ActiveRecord::Base
  belongs_to :user
  scope :visible_to, -> (user) { user ? all : where(:private => false)  }
  
  def init
    self.private == false
  end
  
#   user.present? ? all : where(private: false)
end
