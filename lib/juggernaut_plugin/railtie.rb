module JuggernautPlugin
  class Railtie < Rails::Railtie
    initializer "juggernaut_plugin" do |app|

      require File.dirname(__FILE__) + '/juggernaut'
      require File.dirname(__FILE__) + '/juggernaut_helper'

      ActionView::Base.send(:include, Juggernaut::JuggernautHelper)

      ActionController::Base.class_eval do
        alias_method :render_without_juggernaut, :render
        include Juggernaut::RenderExtension
        alias_method :render, :render_with_juggernaut
      end

      ActionView::Base.class_eval do
        alias_method :render_without_juggernaut, :render
        include Juggernaut::RenderExtension
        alias_method :render, :render_with_juggernaut
      end

    end
  end
end
