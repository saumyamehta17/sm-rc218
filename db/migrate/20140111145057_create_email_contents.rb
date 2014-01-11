class CreateEmailContents < ActiveRecord::Migration
  def change
    create_table :email_contents do |t|
      t.string :message

      t.timestamps
    end
  end
end
