class CreateClickies < ActiveRecord::Migration
  def change
    create_table :clickies do |t|
      t.references :page_info, index: true
      t.references :clicky, index: true
      t.string :url
      t.references :banned_site, index: true

      t.timestamps
    end
  end
end
