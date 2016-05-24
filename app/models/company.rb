class Company < ActiveRecord::Base
  has_many :adcoms
  has_many :admins, through: :adcoms
end
