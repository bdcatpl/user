class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
<<<<<<< HEAD
      #t.string "project"
      t.string "title"
      t.string "start_date"
      #t.string "end_date"
=======
      t.string "project"
      t.string "title"
      t.string "start_date"
      t.string "end_date"
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
      t.string "start_time"
      t.string "end_time"
      t.string "minute_taker"
      t.string "attendee"
<<<<<<< HEAD
      t.string "mob_nos"
      #t.string "place"
      t.string "about_meeting"
      #t.string "topic"
      t.string "type_o"
      #t.string "note"
=======
      t.string "place"
      t.string "about_meeting"
      t.string "topic"
      t.string "type_o"
      t.string "note"
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
      t.string "owner"
      t.timestamps
    end
  end
end
