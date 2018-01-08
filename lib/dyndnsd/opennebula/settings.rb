require "settingslogic"
module Dyndnsd
  module Opennebula
    class Settings < Settingslogic
      source "/etc/dyndnsd-opennebula.yml"
      namespace "dyndnsd-opennebula"
    end
  end
end
