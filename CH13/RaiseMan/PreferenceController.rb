# PreferenceController.rb
# RaiseMan
#
# Created by daniellopes on 04/05/10.
# Copyright 2010 area criacoes. All rights reserved.


class PreferenceController < NSWindowController
  attr_accessor :colorWell, :checkbox
	
  BNRTableBgColorKey = "TableBackgroundColor"
  BNREmptyDocKey = "EmptyDocumentFlag"	
	
	def init
    initWithWindowNibName("Preferences")
    self
	end
	
	def windowDidLoad
		@colorWell.setColor(tableBgColor)
		@checkbox.setState(emptyDoc)
	end
	
	def changeBackgroundColor(sender)
		color = @colorWell.color
		colorAsData = NSKeyedArchiver.archivedDataWithRootObject(color)
		defaults = NSUserDefaults.standardUserDefaults
		defaults.setObject(colorAsData, forKey:BNRTableBgColorKey)
	end
	
	def changeNewEmptyDoc(sender)
    state = @checkbox.state
    state = ( state == 1 ) ? true : false
		
		defaults = NSUserDefaults.standardUserDefaults
		defaults.setBool(state, forKey:BNREmptyDocKey)
	end	

	def	tableBgColor
		defaults = NSUserDefaults.standardUserDefaults
		colorAsData = defaults.objectForKey(BNRTableBgColorKey)
		NSKeyedUnarchiver.unarchiveObjectWithData(colorAsData)
	end
	
	def emptyDoc
		defaults = NSUserDefaults.standardUserDefaults
		defaults.boolForKey(BNREmptyDocKey)	
	end

end