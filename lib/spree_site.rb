module SpreeSite
  class Engine < Rails::Engine
    def self.activate
      # Add your custom site logic here
      if Spree::Config.instance
          Spree::Config.set(:auto_capture => true)
      end
    end
    config.to_prepare &method(:activate).to_proc
  end
end