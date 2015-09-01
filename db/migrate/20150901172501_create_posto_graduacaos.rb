class CreatePostoGraduacaos < ActiveRecord::Migration
  def change
    create_table :posto_graduacaos do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
