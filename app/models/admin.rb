class Admin < ActiveRecord::Base
  has_many :adcoms
  has_many :companies, through: :adcoms
  has_many :users
end
