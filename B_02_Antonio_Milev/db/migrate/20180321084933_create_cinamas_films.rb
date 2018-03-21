class CreateCinamasFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :cinamas_films do |t|
      t.integer :cinema_id
      t.integer :film_id

      t.timestamps
    end
  end
end
