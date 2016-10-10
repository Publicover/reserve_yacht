class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :prefix_one
      t.string :f_name_one
      t.string :l_name_one
      t.string :prefix_two
      t.string :f_name_two
      t.string :l_name_two
      t.string :full_company_name
      t.string :title
      t.string :mla_title
      t.string :mailing_address
      t.string :suite
      t.string :city
      t.string :state
      t.string :zip
      t.string :work_phone
      t.string :cell_phone
      t.string :email_address
      t.string :re_enter_email_address
      t.string :supplier_guest_speaker
      t.date :hotel_arrival
      t.date :hotel_departure
      t.boolean :room_type
      t.text :special_needs
      t.text :special_requests

      t.timestamps
    end
  end
end
