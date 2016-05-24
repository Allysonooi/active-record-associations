class User < ActiveRecord::Base
  belongs_to :admin
  has_many :plusrs
  has_many :plans, through: :plusrs
end
