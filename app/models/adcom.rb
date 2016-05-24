class Adcom < ActiveRecord::Base
  belongs_to :admin
  belongs_to :company
end
