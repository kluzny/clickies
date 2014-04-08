class CreatePageInfos < ActiveRecord::Migration
  def change
    create_table :page_infos do |t|
      t.references :clicky, index: true
      t.string :title
      t.boolean :nsfw

      t.timestamps
    end
  end
end
