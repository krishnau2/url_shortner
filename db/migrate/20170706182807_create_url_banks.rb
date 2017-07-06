class CreateUrlBanks < ActiveRecord::Migration
  def change
    create_table :url_banks do |t|
      t.string :actual_url
      t.string :short_url

      t.timestamps null: false
    end
  end
end
