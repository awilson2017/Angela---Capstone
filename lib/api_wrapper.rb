require 'base64'

class ApiWrapper
  BASE_URL = "https://translation.googleapis.com/language/translate/v2/"
  API_ID = ENV["APPLICATION_ID"]

  #making custom error
  class ApiError < StandardError
  end

  def self.google_translate(search)
    url = BASE_URL + "?key=#{API_KEY}" + "&q=#{search}" + "source=en&target=ko&format=text"

    data = HTTParty.post(url)

    check_status(data)

    # need array to store the parsed api hash results
    translations_list = []

    if data["translations"]
      # data["translations"] is an array of hashes, within each hash there are sub-hashes and sub-arrays, we need
      data["translations"].each do |translation_info_hash|
        translations_list << self.create_translation(translation_info_hash["translatedText"])
      end
    end
    return translations_list
  end

  # def self.find_recipe(uri)
  #   # make a url to call on the edamam api
  #   recipe_link = BASE_URL + "?r=#{uri}&app_id=#{API_ID}&app_key=#{TOKEN}"
  #
  #   # https://api.edamam.com/search
  #   # https://api.edamam.com/search?q=chicken&app_id=${YOUR_APP_ID}&app_key=${YOUR_APP_KEY}&from=0&to=3&calories=gte%20591,%20lte%20722&health=alcohol-free
  #
  #   data = HTTParty.get(recipe_link)
  #
  #
  #
  #
  #   # parse the JSON data in order to get recipe details for the show page
  #   if data.empty?
  #     raise ApiError.new("No recipe details for this link")
  #   else
  #     recipe_detail = self.create_recipe(data[0])
  #   end
  #   return recipe_detail
  # end

  private

  def self.check_status(response)
    unless response.ok?
      raise ApiError.new("API call to Edamam failed")
    end
  end


  # def self.create_recipe(recipe_hash)
  #   recipe = Recipe.new(
  #
  #     # gets the name of the recipe
  #     recipe_hash["label"],
  #     recipe_hash["url"],
  #     recipe_hash["ingredientLines"],
  #     recipe_hash["dietLabels"],
  #     recipe_hash["uri"],
  #     recipe_hash["source"],
  #     {
  #       image: recipe_hash["image"],
  #     }
  #   )
  #   return recipe
  # end

end
