class Hero < ActiveRecord::Base
  table_name= :heros
  primary_key= :hero_id

  attr_accessor :initial_points

  initial_points= 10
end