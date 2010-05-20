# AppController.rb
# RaiseMan
#
# Created by daniellopes on 04/05/10.
# Copyright 2010 area criacoes. All rights reserved.
class AppController
	
	attr_accessor :preferenceController, :aboutPanel
	
	def	self.initialize
		defaultValues = {} # or NSMutableDictionary.dictionary
		colorAsData = NSKeyedArchiver.archivedDataWithRootObject(NSColor.yellowColor)
    
		defaultValues.setObject(colorAsData, forKey:PreferenceController::BNRTableBgColorKey)
    defaultValues.setObject(true, forKey:PreferenceController::BNREmptyDocKey)
    
		NSUserDefaults.standardUserDefaults.registerDefaults(defaultValues)
    NSLog("registered defaults #{defaultValues}")
	end
	
	def showPreferencePanel(sender)
		@preferenceController = PreferenceController.new
		@preferenceController.showWindow(self)
		NSLog("showing #{@preferenceController}")		
	end	
	
	def showAboutPanel(sender)
		successful = NSBundle.loadNibNamed("About", owner:self) if @aboutPanel.nil?
		NSLog("showing About")
		@aboutPanel.makeKeyAndOrderFront(nil)
	end
	
	def applicationShouldOpenUntitledFile(sender)
		NSLog("applicationShouldOpenUntitledFile")
		return NSUserDefaults.standardUserDefaults.boolForKey(PreferenceController::BNRTableBgColorKey)
	end
	
end