class Checkout < ActiveRecord::Base
  validates :book, presence: true

  belongs_to :book
end
