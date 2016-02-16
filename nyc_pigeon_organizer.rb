def nyc_pigeon_organizer(data)
  h = {}
  
  data.each do |stats, values|
    values.each do |value, pigeons|
      pigeons.each do |pigeon|
        h[pigeon] = {color: [], gender: [], lives: []}
      end
    end
  end
  data.each do |stats, values|
    values.each do |value, pigeons|
      pigeons.each do |pigeon|
        h[pigeon][stats] << value.to_s
      end
    end
  end
  h
end