class CreateSiteMessages < ActiveRecord::Migration
  def change
    create_table :site_messages do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
