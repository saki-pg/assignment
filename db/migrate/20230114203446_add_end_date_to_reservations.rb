class AddEndDateToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :end_date, :date
  end
end
