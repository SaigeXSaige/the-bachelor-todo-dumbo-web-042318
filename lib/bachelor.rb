require "pry"

def get_first_name_of_season_winner(data, season)
 winner = ""
 i = 0
 
  data.each do |key, value|
    value.each do |k|
      if k["status"] == "Winner" && key == season
        until k["name"][i] == " "
          winner << k["name"][i]
          i += 1
          #binding.pry
        end
      end
    end
  end

  winner
end

def get_contestant_name(data, occupation)
  contestant = ""
  
  data.each do |key, value|
    value.each do |x|
      if x["occupation"] == occupation
        contestant << x["name"]
      end
    end
  end
  
  contestant
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  
  data.each do |key, value|
    value.each do |x|
      if x["hometown"] == hometown
        counter += 1
      end
    end
  end
  
  counter
end

def get_occupation(data, hometown)
  occupation = []
  
  data.each do |key, value|
    value.each do |x|
      if x["hometown"] == hometown
        occupation << x["occupation"]
      end
    end
  end
  
  occupation.first 
end

def get_average_age_for_season(data, season)
  age = []
  
  data.each do |key, value|
    value.each do |x|
      binding.pry
      if x["season"] == season
        age << x["age"]
        binding.pry
      end
    end
  end
  
  #average = age.sum() / age.length
  #binding.pry
end
