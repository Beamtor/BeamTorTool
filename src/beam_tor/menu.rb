# frozen_string_literal: true

module BeamTor
  module Menu

    def self.create
      menu = UI.menu("Extensions")
      submenu = menu.add_submenu("Beam Tor Tool")

      submenu.add_item("About") {
        UI.messagebox("Beam Tor Tool\nVersion #{BeamTor::VERSION}")
      }
    end

  end
end