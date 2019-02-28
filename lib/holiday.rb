require 'pry'
h = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas][2] = supply
  holiday_supplies[:winter][:new_years][1] = supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day][1] = supply


end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  list = holiday_hash[:winter].values
  list.flatten
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |seasons, holidays|
   puts "#{seasons.to_s.capitalize}:"

   holidays.each do |holidays, supplies|
     puts "  #{holidays.to_s.tr("_"," ").split(' ').map {|word| word.capitalize }.join(' ')}: #{supplies.join(", ")}"
end
end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  bbqs = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holidays, supplies|
      if supplies.include? "BBQ"
        bbqs << holidays
      end
    end
  end
  bbqs
end

end
