

class ClientController < ApplicationController
  require 'active_support/core_ext/hash'

  def index

    #def connect_to_client_and_get_stations
     ns_client = Ns::Client.new('konstantinos.gkogkoglou@gmail.com', 'EpJBpuxVdTkDYV8Rsu0GNgbcnQwDo9RM9I8J7-gFMVZHVVH8XZVBqQ')
     available_stations = ns_client.get_stations
     @hash = Hash.from_xml(available_stations)
     #get all codes and names
     @root_node       = @hash["stations"]     || {}
     @stations        = @root_node["station"] || []
     @codes_and_names = @stations.compact.map do |station|
             {
               :code       => station["code"],
               :name       => station['name']
             }
              end
              #get all station names
              @names = @stations.compact.map do |station|
                station['name']
                end

              #get all station codes
              @codes= @stations.compact.map do |station|
                station["code"]
              end
    #end


  end

  def options
    ns_client = Ns::Client.new('konstantinos.gkogkoglou@gmail.com', 'EpJBpuxVdTkDYV8Rsu0GNgbcnQwDo9RM9I8J7-gFMVZHVVH8XZVBqQ')
    available_stations = ns_client.get_stations
    advice = ns_client.get_travel_advice(available_stations[0],
                                     available_stations[1])

    #@hash2 = Hash.from_xml(@travel_advices)

    #@get_prices = ns_client.get_prices(params[:from], params[:to])



  end



end
