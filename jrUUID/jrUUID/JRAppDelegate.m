//
//  JRAppDelegate.m
//  jrUUID
//
//  Created by Joshua Luongo on 16/04/2014.
//  Copyright (c) 2014 JR Apps. All rights reserved.
//

#import "JRAppDelegate.h"

@implementation JRAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self generateUUIDShouldCopy:NO];
}

- (IBAction)generateNew:(id)sender
{
    [self generateUUIDShouldCopy:NO];
}

- (IBAction)generateNewAndCopy:(id)sender
{
    [self generateUUIDShouldCopy:YES];
}

- (void)generateUUIDShouldCopy:(BOOL)copy
{
    _uuid = [[NSUUID UUID] UUIDString];
    [_outputBox setStringValue:_uuid];
    if (copy)
    {
        [self writeToPasteBoard:_uuid.copy];
    }
}

- (IBAction)openJRApps:(id)sender
{
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://jrapps.com.au/"]];
}

- (BOOL) writeToPasteBoard:(NSString *)stringToWrite
{
    [[NSPasteboard generalPasteboard] clearContents];
    return [[NSPasteboard generalPasteboard] writeObjects:[NSArray arrayWithObject:stringToWrite]];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

@end
