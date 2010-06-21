//
//  PreferenceController.h
//  RaiseMan
//
//  Created by Aaron Hillegass on 10/15/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

extern NSString *BNRTableBgColorKey;
extern NSString *BNREmptyDocKey;

@interface PreferenceController : NSWindowController {
	IBOutlet NSColorWell *colorWell;
	IBOutlet NSButton *checkbox;
}
- (IBAction)changeBackgroundColor:(id)sender;
- (IBAction)changeNewEmptyDoc:(id)sender;
- (IBAction)resetFactoryDefaults:(id)sender;
- (NSColor *)tableBgColor;
- (BOOL)emptyDoc;

@end
