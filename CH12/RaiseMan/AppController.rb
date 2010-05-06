# AppController.rb
# RaiseMan
#
# Created by daniellopes on 04/05/10.
# Copyright 2010 area criacoes. All rights reserved.
class AppController
	
	attr_accessor :preferenceController, :aboutPanel
	
	def showPreferencePanel(sender)
		@preferenceController = PreferenceController.new
		@preferenceController.showWindow(self)
		NSLog("showing #{@preferenceController}")		
	end	
	
	def showAboutPanel(sender)
		successful = NSBundle.loadNibNamed("About", owner:self) if @aboutPanel.nil?
		puts "ABOUT"
		@aboutPanel.makeKeyAndOrderFront(nil)
	end
	
end