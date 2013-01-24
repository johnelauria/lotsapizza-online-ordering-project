class AddSoHeaderIdToSoDetails < ActiveRecord::Migration
  def change
    add_column :so_details, :so_header_id, :integer
  end
end
