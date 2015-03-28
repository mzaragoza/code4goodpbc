class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name,             null: false, default: ""
      t.string :address,          null: false, default: ""
      t.string :city,             null: false, default: ""
      t.string :state,            null: false, default: ""
      t.string :zip,              null: false, default: ""
      t.boolean :active,          null: false, default: true
    end

  end
end
