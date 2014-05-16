//
//  WESAppDelegate.m
//  mutableCopyTest
//
//  Created by Simon Westerlund on 16/05/14.
//  Copyright (c) 2014 Simon Westerlund. All rights reserved.
//

#import "WESAppDelegate.h"
#import "WESObject.h"

@implementation WESAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    WESObject *obj = [[WESObject alloc] initWithString:@"test 1"];
    NSLog(@"%@", [obj string]);
    
    WESObject *obj2 = [obj copy];
    NSLog(@"%@", [obj2 string]);
    
    WESMutableObject *obj3 = [obj mutableCopy];
    NSLog(@"%@", [obj3 string]);
    [obj3 setString:@"test 2"];
    NSLog(@"%@", [obj3 string]);
    [obj3 setString:@"test 3"];
    NSLog(@"%@", [obj3 string]);
    
    WESObject *obj4 = [obj3 copy];
    NSLog(@"%@", [obj4 string]);
    
    // Crash
//    [(WESMutableObject*)obj setString:@"test 4"];
//    NSLog(@"%@", [obj string]);
    
    return YES;
}

@end
