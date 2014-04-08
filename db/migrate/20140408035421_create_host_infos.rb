class CreateHostInfos < ActiveRecord::Migration
  def change
    create_table :host_infos do |t|
      t.references :clicky, index: true
      t.string :ip
      t.string :domain
      t.string :status
      t.integer :ping
      t.boolean :blacklisted
      t.datetime :blacklisted_on
      t.datetime :checked_at

      t.timestamps
    end
  end
end
