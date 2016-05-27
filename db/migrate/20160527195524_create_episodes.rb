class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.references :podcast, index: true

      t.timestamps null: false
    end
  end
end
