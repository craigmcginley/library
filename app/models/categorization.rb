class Categorization < ActiveRecord::Base
  validates :book, presence: true
  validates :category, presence: true

  belongs_to :book
  belongs_to :category
end
