class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :price, presence: true, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }
  validates :description, presence: true
  validates :title, presence: true

  def average_rating
    if reviews.size > 0
      reviews.average(:rating).round(1)
    else
      '0'
    end
  end
end
