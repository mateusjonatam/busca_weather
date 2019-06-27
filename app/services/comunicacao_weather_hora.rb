class HourlyForecast

    def horas(cidade)
        @cidade = cidade

        key = "03e0f7d40c9c2afd73ffd62cb2f82a34"

        url = "http://api.openweathermap.org/data/2.5/forecast/hourly?q=#{@cidade},BR&appid=#{@key}&units=metric"
    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

    end
end