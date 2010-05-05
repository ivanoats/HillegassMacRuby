# AppController.rb
# RaiseMan
#
# Created by daniellopes on 04/05/10.
# Copyright 2010 area criacoes. All rights reserved.
class AppController
	
	def showPreferencePanel(sender)
		@preferenceController = PreferenceController.new
		@preferenceController.showWindow(self)
		NSLog("showing #{@preferenceController}")		
	end	
	
end

