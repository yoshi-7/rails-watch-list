class AddMoviesAndListToBookmark < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :list, foreign_key: true
    add_reference :bookmarks, :movie, foreign_key: true
    add_column :bookmarks, :comment, :string
  end
end
