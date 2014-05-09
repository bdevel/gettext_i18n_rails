require 'ostruct'

# Put this in your environment.rb or environments/development.rb
# Or both and override settings for development or production.
# GettextI18nRailsJs.configure do |config|
#   config.po2json.pretty_js = true
#   config.json_locals_path = 'app/assets/javascripts/locals'
# end

module GettextI18nRails
  @@options = OpenStruct.new
  
  def self.options
    @@options
  end
  
  def self.configure(&block)
    block.call(@@options)
  end
  
end
