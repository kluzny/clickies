class Clicky < ActiveRecord::Base
  belongs_to :page_info
  belongs_to :clicky
  belongs_to :banned_site
end
