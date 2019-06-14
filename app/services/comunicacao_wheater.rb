class ComunicacaoWheater

    def buscar(cidade)

        @cidade = cidade
        url = "https://samples.openweathermap.org/data/2.5/weather?q=#{@cidade},uk&appid=03e0f7d40c9c2afd73ffd62cb2f82a34"

        retorno = JSON.parse(Net::HTTP.get(URI(url)))

    rescue => exception
        {erro: "Ligar no suporte"}
    rescue JSON::ParseError => exception
        {erro: "Ligar para o suporte!"}
    end
end