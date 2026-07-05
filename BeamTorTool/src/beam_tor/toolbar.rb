require 'sketchup.rb'

module BeamTorTool
  module Toolbar
    def self.create
      return if @toolbar_created
      
      tb = UI::Toolbar.new(PLUGIN_NAME)
      
      cmd_beam = UI::Command.new('Draw Beam') {
        puts "#{PLUGIN_NAME}: Draw Beam Toolbar clicked!"
        UI.messagebox('กำลังพัฒนา: ฟีเจอร์วาดคาน (Draw Beam) จะมาเร็วๆ นี้!')
      }
      cmd_beam.tooltip = 'Draw Beam (วาดคาน)'
      cmd_beam.status_bar_text = 'Create a new RC Beam'
      tb.add_item(cmd_beam)
      
      cmd_column = UI::Command.new('Draw Column') {
        puts "#{PLUGIN_NAME}: Draw Column Toolbar clicked!"
        UI.messagebox('กำลังพัฒนา: ฟีเจอร์วาดเสา (Draw Column) จะมาเร็วๆ นี้!')
      }
      cmd_column.tooltip = 'Draw Column (วาดเสา)'
      cmd_column.status_bar_text = 'Create a new RC Column'
      tb.add_item(cmd_column)
      
      cmd_footing = UI::Command.new('Draw Footing') {
        puts "#{PLUGIN_NAME}: Draw Footing Toolbar clicked!"
        UI.messagebox('กำลังพัฒนา: ฟีเจอร์วาดฐานราก (Draw Footing) จะมาเร็วๆ นี้!')
      }
      cmd_footing.tooltip = 'Draw Footing (วาดฐานราก)'
      cmd_footing.status_bar_text = 'Create a new RC Footing'
      tb.add_item(cmd_footing)
      
      if tb.get_last_state == TB_NEVER_SHOWN
        tb.show
      elsif tb.get_last_state == TB_VISIBLE
        tb.restore
      end
      
      @toolbar_created = true
    end
  end
end