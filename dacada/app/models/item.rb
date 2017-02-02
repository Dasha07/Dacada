class Item < ActiveRecord::Base
  belongs_to :category
  has_many :purchases
  has_many :reviews
  has_many :buyers, :through => :purchases, :source => :user

  def adjust_stock(quantity)
      new_stock = self.stock - quantity
      self.update stock:new_stock
  end
end
