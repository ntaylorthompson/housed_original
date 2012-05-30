class Show < ActiveRecord::Base
  attr_accessible :date, :host_email, :location, :ticket_price, :tickets_max,
                  :tickets_min
#  belongs_to :host_id, class_name: "User"
  belongs_to :user
  has_many :guests
  
  validates :date, :host_email, :location, :ticket_price, 
            :tickets_max, :tickets_min, presence: true

#  validates :musician_id, presence: true

  
end
