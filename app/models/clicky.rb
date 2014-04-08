class Clicky < ActiveRecord::Base
  belongs_to :page_info
  belongs_to :clicky
  belongs_to :banned_site
  has_one :host_info
  has_one :page_info
  has_many :clickies
end
