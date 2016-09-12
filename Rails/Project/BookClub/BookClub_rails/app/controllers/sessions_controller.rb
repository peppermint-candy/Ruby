class SessionsController < ApplicationController

  require 'json'
  require 'net/http' #to make a GET request
  require 'open-uri' #to fetch the data from the URL to then be parsed by JSON
  require 'rexml/document'


  $emoji_uri = "https://api.github.com/emojis"
  $goodreads_uri = "https://www.goodreads.com/search.xml?key=CjAV5c8sTQyCKF60mR2NNw&q=The+Girl+On+The+Train"
  # key: CjAV5c8sTQyCKF60mR2NNw
  # secret: 8BdY5WbjOOnTQNo7gJhHlydRqfqhsd4L5Kd1W7xKQ
  def get_api


  end



  def create
    redirect_to '/main'
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  def index
    @me = User.find(current_user.id)
    # client = Goodreads.new(api_key: "Jsqv61FuBmvCg7mKDFGig")
    # @test = client.book_ty_title("The girl on the train")
    uri = URI.parse($goodreads_uri)
    http = Net::HTTP.new(uri.host, uri.port)
    #to be able to access https URL, these line should be added
    #github api has an https URL
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    #store the body of the requested URI (Uniform Resource Identifier)
    data = response.body
    #to parse JSON string; you may also use JSON.parse()
    #JSON.load() turns the data into a hash
    # @emoji = JSON.load(data)

    # file = File.open("data.xml")
    doc = REXML::Document.new data
    # file.close

    @test = doc.elements.each("GoodreadsResponse/search/results/work/best_book/title") do |element|
      # @aa << element.attributes
      puts element
    end

  end
end
