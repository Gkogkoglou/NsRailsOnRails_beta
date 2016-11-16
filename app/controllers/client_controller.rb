

class ClientController < ApplicationController

  def index

    ns_client = Ns::Client.new('konstantinos.gkogkoglou@gmail.com', 'EpJBpuxVdTkDYV8Rsu0GNgbcnQwDo9RM9I8J7-gFMVZHVVH8XZVBqQ')

    available_stations = ns_client.get_stations
    advice = ns_client.get_travel_advice(available_stations[0], available_stations[1])
    end


end
