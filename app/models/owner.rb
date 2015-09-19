class Owner < ActiveRecord::Base
  has_many :cats

  scope :ordered_asc, -> { order(name: :asc) }

  scope :with_cats, -> { joins(:cats) }

  validates :name, presence: true
end
