class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :workspace

  validates :start_date, presence: true, allow_blank: false
  validates :end_date, presence: true, allow_blank: false
  validates :city, presence: true, allow_blank: false
  validates :workspace, presence: true, allow_blank: false
  validates :user, presence: true, allow_blank: false

  validates_uniqueness_of :start_date, scope: [:workspace_id, :city]
  validates_uniqueness_of :end_date, scope: [:workspace_id, :city]
end
