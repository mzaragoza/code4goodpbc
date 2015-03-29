class AddColumnsToReceviers < ActiveRecord::Migration
  def change
      add_column :receivers, :address,    :string, null: false, default: ""
      add_column :receivers, :city,       :string, null: false, default: ""
      add_column :receivers, :state,      :string, null: false, default: ""
      add_column :receivers, :postal_code,:string, null: false, default: ""
      add_column :receivers, :longitude, :float
      add_column :receivers, :latitude, :float
  end
end
