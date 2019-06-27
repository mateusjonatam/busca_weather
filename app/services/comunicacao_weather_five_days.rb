class FiveDaysForecast

    def cinco(cidade)

        @cidade = cidade


        url = "http://api.openweathermap.org/data/2.5/forecast?q=#{@cidade},BR&appid=03e0f7d40c9c2afd73ffd62cb2f82a34&units=metric"
    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))


    end
end
