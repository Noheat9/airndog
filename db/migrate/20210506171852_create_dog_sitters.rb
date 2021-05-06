class CreateDogSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_sitters do |t|
      t.string :hooman
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
