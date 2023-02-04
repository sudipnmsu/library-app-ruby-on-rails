class CreateAuthors < ActiveRecord::Migration[7.0]
  def self.up
    create_table :authors do |t|
      t.column :name, :string, :limit => 50, :null => false
    end
  end

  def self.down
    drop_table :authors 
  end
end
