class RentProperty < ActiveRecord::Base
  belongs_to :city
  belongs_to :street
  belongs_to :user
  belongs_to :status
end
