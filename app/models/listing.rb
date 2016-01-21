class Listing < ActiveRecord::Base
  belongs_to :rent_property
  belongs_to :user
end
