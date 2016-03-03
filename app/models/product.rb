class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true
  validates :content, presence: true, length: {minimum: 10}
  validates :price, numericality: {only_integer: true}

end
