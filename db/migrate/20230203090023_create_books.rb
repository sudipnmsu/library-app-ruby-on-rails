class CreateBooks < ActiveRecord::Migration[7.0]
  def self.up
    create_table :books do |t|
      t.column :author_id, :integer
      t.column :title, :string, :limit => 50, :null => false
    end
  end

  def self.down
    drop_table :books
  end
end
