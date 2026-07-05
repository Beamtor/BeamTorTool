require 'sketchup.rb'

module BeamTorTool
  module Menu
    def self.create
      return if @menu_created

      ext_menu = UI.menu('Plugins')
      main_menu = ext_menu.add_submenu(PLUGIN_NAME)
      
      main_menu.add_item('Draw Beam') {
        puts "#{PLUGIN_NAME}: Draw Beam clicked!"
        UI.messagebox('กำลังพัฒนา: ฟีเจอร์วาดคาน (Draw Beam) จะมาเร็วๆ นี้!')
      }
      
      main_menu.add_item('Draw Column') {
        puts "#{PLUGIN_NAME}: Draw Column clicked!"
        UI.messagebox('กำลังพัฒนา: ฟีเจอร์วาดเสา (Draw Column) จะมาเร็วๆ นี้!')
      }
      
      main_menu.add_item('Draw Footing') {
        puts "#{PLUGIN_NAME}: Draw Footing clicked!"
        UI.messagebox('กำลังพัฒนา: ฟีเจอร์วาดฐานราก (Draw Footing) จะมาเร็วๆ นี้!')
      }

      @menu_created = true
    end
  end
end