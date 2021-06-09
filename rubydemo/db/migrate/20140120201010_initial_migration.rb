class InitialMigration < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name      
      t.date :dateOfBirth      
      t.string :height      
      t.boolean :isProfessional      
      t.timestamps
    end
    create_table :leagues do |t|
      t.string :name      
      t.timestamps
    end
    create_table :tournaments do |t|
      t.string :name      
      t.integer :Type      
      t.timestamps
    end
    create_table :matchups do |t|
      t.string :name      
      t.timestamps
    end
    create_table :games do |t|
      t.integer :frames      
      t.timestamps
    end
  end
end
