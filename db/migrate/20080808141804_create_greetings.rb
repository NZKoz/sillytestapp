class CreateGreetings < ActiveRecord::Migration
  def self.up
    create_table :greetings do |t|
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :greetings
  end
end
