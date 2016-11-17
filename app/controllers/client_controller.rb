

class ClientController < ApplicationController
require 'active_support/core_ext/hash'

  def index

    ns_client = Ns::Client.new('konstantinos.gkogkoglou@gmail.com', 'EpJBpuxVdTkDYV8Rsu0GNgbcnQwDo9RM9I8J7-gFMVZHVVH8XZVBqQ')

    #debugger
    available_stations = ns_client.get_stations
      #trip = Ns::Trip.new(from: 'Amsterdam Centraal', to: 'Ede Centrum', arrival: Time.now)


      @hash = Hash.from_xml(available_stations)

      #get all codes and names
      @root_node       = @hash["stations"]     || {}
      @stations        = @root_node["station"] || []
      @codes_and_names = @stations.compact.map do |station|
        {
          :code       => station["code"],
          :lang       => station['name']
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

      debugger




        end




end
