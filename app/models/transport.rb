class Transport < ApplicationRecord
  validates_presence_of :domain, :nexthop
  validates :port, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 65536 }
end
