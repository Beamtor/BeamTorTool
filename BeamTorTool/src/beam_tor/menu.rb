require 'sketchup.rb'

module BeamTorTool
  module Menu
    def self.create
      # ป้องกันการสร้างเมนูซ้ำซ้อนเวลาโหลดโค้ดใหม่ (reload)
      return if @menu_created

      # ไปดึงเอาเมนู "Extensions" (หรือ Plugins ในเวอร์ชันเก่า) ของ SketchUp มา
      ext_menu = UI.menu('Extensions')
      
      # สร้างโฟลเดอร์เมนูของเราเองข้างในนั้น
      main_menu = ext_menu.add_submenu(PLUGIN_NAME)
      
      # เพิ่มปุ่มย่อย: Draw Beam
      main_menu.add_item('Draw Beam') {
        puts "#{PLUGIN_NAME}: Draw Beam clicked!"
        UI.messagebox('กำลังพัฒนา: ฟีเจอร์วาดคาน (Draw Beam) จะมาเร็วๆ นี้!')
      }
      
      # เพิ่มปุ่มย่อย: Draw Column
      main_menu.add_item('Draw Column') {
        puts "#{PLUGIN_NAME}: Draw Column clicked!"
        UI.messagebox('กำลังพัฒนา: ฟีเจอร์วาดเสา (Draw Column) จะมาเร็วๆ นี้!')
      }
      
      # เพิ่มปุ่มย่อย: Draw Footing
      main_menu.add_item('Draw Footing') {
        puts "#{PLUGIN_NAME}: Draw Footing clicked!"
        UI.messagebox('กำลังพัฒนา: ฟีเจอร์วาดฐานราก (Draw Footing) จะมาเร็วๆ นี้!')
      }

      # บันทึกสถานะว่าเมนูถูกสร้างแล้ว
      @menu_created = true
    end
  end
end