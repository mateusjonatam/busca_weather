class BuscaClimaController < ApplicationController
    require 'net/http'
    require 'json'

    def buscar_clima 
        render json: ComunicacaoWeather.new.buscar(cidade_params[:cidade]), status: :ok
    private 

    def cidade_params
        params.permit(:cidade)
    end

end
