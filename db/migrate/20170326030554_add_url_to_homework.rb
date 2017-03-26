class AddUrlToHomework < ActiveRecord::Migration
  def change
    add_column :homeworks, :url, :string
  end
end
