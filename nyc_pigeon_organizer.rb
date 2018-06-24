require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(category, category_hash), pigeon_list|
    category_hash.each do |category_type, name_array|
      name_array.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][category] ||= []
           pigeon_list[name][category] << category_type.to_s
      end
    end
  end
end
