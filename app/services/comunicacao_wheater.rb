class ComunicacaoWheater

        def atual(cidade)

            @cidade = cidade
            
            retorno = JSON.parse(Net::HTTP.get(URI(url)))


            if retorno["message"]
                return {message: "Cidade inexistente!"}
            else
                temperatura = {
                "Graus": retorno["main"]["temp"],
                "Pressão": retorno["main"]["pressure"],
                "Umidade": retorno["main"]["humidity"],
                "Temperatura máxima": retorno["main"]["temp_max"],
                "Temperatura mínima": retorno["main"]["temp_min"],
                "Vento": retorno["wind"]["speed"],
                "Rajada": retorno["wind"]["deg"]
                "Alvorada": Time.at(retorno["sys"]["sunrise"]),
                "Crepusculo": Time.at(retorno["sys"]["sunset"]),
                }
            end
        end
    end

    end
end