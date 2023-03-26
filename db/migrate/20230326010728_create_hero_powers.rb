class CreateHeroPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_powers do |t|
      t.string :strength
      t.references :hero
      t.references :power

      t.timestamps
    end
  end
end
