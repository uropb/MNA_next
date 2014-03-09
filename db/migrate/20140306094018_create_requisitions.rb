class CreateRequisitions < ActiveRecord::Migration
  def change

    create_table :requisitions do |t|
      t.string :contact_person
      t.string :email
      t.string :phone_number
      t.string :comment
      t.string :name_organization
      t.string :doc_uid

      t.timestamps
    end
  end
end
