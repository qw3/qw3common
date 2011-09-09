# -*- encoding : utf-8 -*-
module Qw3common
  module Generators
    class RoutesGenerator < Rails::Generators::NamedBase
      
      def generate_routes
        model = name.split('/')
        if model.count > 1
          # Possui namespace
          route "namespace :#{model[0]} do
    resources :#{model[1]} do
      member do
        get 'publicar'
      end
    end

    controller :#{model[1]} do
      get '#{model[1]}/publicar'          => :publicar
      post '#{model[1]}/multi_remover'    => :multi_remover
      post '#{model[1]}/multi_publicar'   => :multi_publicar
      post '#{model[1]}/ordenar'          => :ordenar
    end
  end\n"
        else
          # Não possui namespace
          route "resources :#{model} do
              member do
                get 'publicar'
              end
            end

            controller :#{model} do
              get '#{model}/publicar'          => :publicar
              post '#{model}/multi_remover'    => :multi_remover
              post '#{model}/multi_publicar'   => :multi_publicar
              post '#{model}/ordenar'          => :ordenar
            end"
        end
      end
      
    end
  end
end
