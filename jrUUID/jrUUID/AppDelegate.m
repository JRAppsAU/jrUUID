//
//  AppDelegate.m
//  jrUUID
//
//  Created by Joshua Luongo on 14/10/2014.
//  Copyright (c) 2014 JR Apps. All rights reserved.
//

#import "AppDelegate.h"
#import "AXStatusItemPopup.h"
#import "JRUUIDViewController.h"

@interface AppDelegate () {
    AXStatusItemPopup *_statusItemPopup;
}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    JRUUIDViewController *jrVc = [[JRUUIDViewController alloc] initWithNibName:@"JRUUIDViewController" bundle:nil];
    
    // init the status item popup
    NSImage *image = [NSImage imageNamed:@"Menu"];
    NSImage *alternateImage = [NSImage imageNamed:@"MenuWhite"];
    
    _statusItemPopup = [[AXStatusItemPopup alloc] initWithViewController:jrVc image:image alternateImage:alternateImage];
    
    // globally set animation state (optional, defaults to YES)
    //_statusItemPopup.animated = NO;
    
    //
    // --------------
    
    // optionally set the popover to the contentview to e.g. hide it from there

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
