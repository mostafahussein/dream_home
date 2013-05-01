class CreateMailers < ActiveRecord::Migration
  def change
    create_table :mailers do |t|
      t.string :company_name
      t.string :contact_name
      t.string :address
      t.string :telephone
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
