class HostInfo < ActiveRecord::Base
  belongs_to :clicky
  validates_formatting_of :ip, using: :ip_address_v4
end
