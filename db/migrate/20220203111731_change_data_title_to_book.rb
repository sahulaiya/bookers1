class ChangeDataTitleToBook < ActiveRecord::Migration[5.0]
  def up
    add_column :books, :title, :string
    add_column :books, :body, :string
  end
end
