class ChangeSoNumberToString < ActiveRecord::Migration
  def up
    remove_column :so_headers, :outlet_code
    remove_column :so_details, :outlet_code
    add_column :so_details, :outlet_code, :string
    add_column :so_headers, :outlet_code, :string
  end

  def down
    remove_column :so_details, :outlet_code
    remove_column :so_headers, :outlet_code
    add_column :so_details, :outlet_code, :integer
    add_column :so_headers, :outlet_code, :integer
  end
end
