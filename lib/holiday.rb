require 'pry'
  # given that holiday_hash looks like this:
   #{
   # :winter => {
   #    :christmas => ["Lights", "Wreath"],
   #    :new_years => ["Party Hats"]
   #   },
   #  :summer => {
   #    :fourth_of_july => ["Fireworks", "BBQ"]
   #   },
   #  :fall => {
   #    :thanksgiving => ["Turkey"]
   #  },
   #   :spring => {
   #    :memorial_day => ["BBQ"]
   #  }
   # }
  
def second_supply_for_fourth_of_july(holiday_hash)
     holiday_hash[:summer][:fourth_of_july][1]   
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|holiday, supplies| supplies << supply}
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
      holiday.each do |event, supplies|
        puts "  #{event.to_s.split("_").map {|cap_word| cap_word.capitalize!}.join(" ")}: #{supplies.join(", ")}"
    end
  end  
end

def all_holidays_with_bbq(holiday_hash)
 holiday_hash.map do |season, holiday|
   holiday.map do |holidays, supplies|
<<<<<<< HEAD
     supplies.include?("BBQ") ? holidays : nil
   end
 end.flatten.compact
=======
     if supplies.include?("BBQ") 
       holidays
      else 
        nil
     end
   end.compact.flatten
 end
>>>>>>> 2996827e0b183e6a4fa3d0e4b81f2999b09be2f9
end







