


class ClientController < ApplicationController
require 'active_support/core_ext/hash'

  def index

    ns_client = Ns::Client.new('konstantinos.gkogkoglou@gmail.com', 'EpJBpuxVdTkDYV8Rsu0GNgbcnQwDo9RM9I8J7-gFMVZHVVH8XZVBqQ')

    #debugger
    available_stations = ns_client.get_stations
      #trip = Ns::Trip.new(from: 'Amsterdam Centraal', to: 'Ede Centrum', arrival: Time.now)


      @hash = Hash.from_xml(available_stations)
      #@hash_2 = @hash[:stations]

      #@hash_keys = @hash.keys
      #@hashstring = @hash.to_s
      @root_node       = @hash["Stations"]     || {}

      #@stations        = @root_node["Station"] || []
      #debugger
      #@codes_and_langs = @stations.compact.map do |station|
      #  {
      #    :code       => station["Code"],
      #    :lang       => station.fetch('Namen',{})['Lang']
      #  }

      #end




        end




end
