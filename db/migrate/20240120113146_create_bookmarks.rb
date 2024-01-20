class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment

      # Coder le lien à la foreign key
      # t.references :route, index: true, foreign_key: true

      t.timestamps
    end
  end
end
