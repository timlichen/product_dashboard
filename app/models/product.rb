class Product < ActiveRecord::Base
  has_many :categories
  has_many :comments, dependent: :destroy
end
