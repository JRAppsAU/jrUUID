//
//  JRAppDelegate.h
//  jrUUID
//
//  Created by Joshua Luongo on 16/04/2014.
//  Copyright (c) 2014 JR Apps. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface JRAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (assign) NSString *uuid;
@property (weak) IBOutlet NSTextField *outputBox;

- (IBAction)generateNew:(id)sender;
- (IBAction)generateNewAndCopy:(id)sender;
- (IBAction)openJRApps:(id)sender;

@end
