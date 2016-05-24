class Plan < ActiveRecord::Base
  belongs_to :admin
  has_many :plusrs
  has_many :users, through: :plusrs
end
