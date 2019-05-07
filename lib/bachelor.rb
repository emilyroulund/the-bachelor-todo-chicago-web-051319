#{seasons:[{contestants}] contestants= {stats:values}

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants| #array of contestants
    if contestants["status"] == "Winner"
          return contestants["name"].split.first 
        end
      end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |info|
    if info["occupation"] == occupation 
      return info["name"]
    end 
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        i += 1 
      end
      end
    end
    i
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |info|
    if info["hometown"] == hometown
      return info["occupation"]
    end
    end
  end
end



def get_average_age_for_season(data, season)
  age = 0
  count= 0
  data[season].each do |array|
      array.each do |key, value|
        #increase the count in each season
        count += 1
        #get the value of the age 
        #add the ages of every season and turn them into floor value so we can devide decimal number
        age += array["age"].to_f
      end
  end
  #average = age/count and round the number
  (age/count).round
end
