require 'juggernaut_plugin/version'

if defined?(Rails::Railtie)
  require 'juggernaut_plugin/railtie'
elsif defined?(Rails::Initializer)
  raise "juggernaut_plugin (gem version) is not compatible with Rails 2.3 or older"
end
