class Dojo < ApplicationRecord
	belongs_to :user
	has_one :video
	self.inheritance_column = 'category'

  scope :katas, -> { where(category: 'Kata') }
  scope :randoris, -> { where(category: 'Randori') }

  has_one :location

  def self.categories
    %w(Kata Randori)
  end

end
