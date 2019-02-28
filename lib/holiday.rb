require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash.each do |key, value|
  if key == :winter
  value.each do |attribute, data|
    if attribute == :christmas || :new_years
      data << supply
end
end
end
end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |key, value|
    if key == :spring
    value.each do |attribute, data|
      if attribute == :memorial_day
        data << supply
    end
  end
  end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)

holiday_hash.each do |key, value|
  puts "#{key.capitalize}:"
  value.each do |holiday, array|
    puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{array.join(", ")}"
end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  newArray = []
holiday_hash.each do |key, value|
  value.each do |attribute, data|
    if data.include?("BBQ")
      newArray << attribute
    end
  end
end
newArray
end
