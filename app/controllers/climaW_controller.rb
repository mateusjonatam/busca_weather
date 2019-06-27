class BuscaClimaController < ApplicationController
    require 'net/http'
    require 'json'


    def buscar
        render json: ComunicacaoWeather.new.buscar(cidade_params[:cidade]), status: :ok
    

end
