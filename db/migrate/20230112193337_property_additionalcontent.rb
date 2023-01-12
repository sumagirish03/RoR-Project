class PropertyAdditionalcontent < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :source, :string
    add_column :properties, :destination, :string
  end
end
