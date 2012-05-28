class Show < ActiveRecord::Base
  attr_accessible :date, :host_email, :location, :ticket_price, :tickets_max,
                  :tickets_min
  belongs_to :host_id, class_name: "User"
  belongs_to :musician_id, class_name: "User"
  
  validates :date, presence: true
  validates :host_email, presence: true
  validates :location, presence: true

  validates :ticket_price, presence: true
  validates :tickets_max, presence: true
  validates :tickets_min, presence: true
  
end
