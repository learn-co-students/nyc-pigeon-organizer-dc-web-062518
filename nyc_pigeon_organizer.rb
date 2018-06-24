require 'pry'
def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, h), result|
    h.each do |value, names|
      names.each do |name|
        result[name] ||= {} 
        result[name][key] ||= []
        result[name][key] << value.to_s 
      end
    end
  end
end

# data.each do |key, hash|
  #   keys = hash.values.flatten.uniq
  #   hash.each do |type, arr|
  #     keys.each do |pigeon|
  #       type_arr = []
  #       if arr.include?(pigeon)
  #         #binding.pry
  #         if pigeon_hash.has_key?(pigeon)
  #           type_arr << type.to_s
  #           pigeon_hash[pigeon][key] = type_arr
  #           binding.pry
  #         else 
  #           type_arr << type.to_s
  #           pigeon_hash[pigeon] = {key => type_arr}
  #           #binding.pry
  #         end
  #       end
  #     end
  #   end