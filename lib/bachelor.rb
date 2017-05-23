def get_first_name_of_season_winner(data, season)
  data.each do |sea, array|
    array.each do |info_hash|
      if sea == season && info_hash["status"] == "Winner"
        return info_hash["name"].slice(0..(info_hash["name"].index(' '))).strip
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |sea, array|
    array.each do |info_hash|
      if occupation == info_hash["occupation"]
        return info_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |sea, array|
    array.each do |info_hash|
      if hometown == info_hash["hometown"]
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |sea, array|
    array.each do |info_hash|
      if hometown == info_hash["hometown"]
        return info_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  arr = []
  data.each do |sea, array|
    array.each do |info_hash|
      if sea == season
        arr << info_hash["age"]
      end
    end
  end
  arr_i = arr.map! {|str| str.to_i}
  total = arr_i.inject(:+)
  length = arr_i.length
  average = total.to_f / length.to_f
  return average.round
end
