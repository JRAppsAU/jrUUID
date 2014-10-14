//
//  JRUUIDViewController.m
//  jrUUID
//
//  Created by Joshua Luongo on 14/10/2014.
//  Copyright (c) 2014 JR Apps. All rights reserved.
//

#import "JRUUIDViewController.h"

@interface JRUUIDViewController ()

@property (weak) IBOutlet NSTextField *uuidOutput;

@end

@implementation JRUUIDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self generateUUID:nil];
}

- (IBAction)generateUUID:(id)sender
{
    [_uuidOutput setStringValue:[[NSUUID UUID] UUIDString]];
}

- (IBAction)generateAndCopy:(id)sender
{

}

@end
