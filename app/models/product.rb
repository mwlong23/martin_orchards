class Product < ApplicationRecord
  has_many :reviews
  validates :title, :presence => true
  validates :description, :presence => true
  validates :weight, :presence => true
  validates :box_price, :presence => true
  validates :weekly_deliver_cost, :presence => true
end
