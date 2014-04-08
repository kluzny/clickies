class CreateBannedSites < ActiveRecord::Migration
  def change
    create_table :banned_sites do |t|
      t.datetime :banned_on
      t.string :domain
      t.string :reason

      t.timestamps
    end
  end
end
