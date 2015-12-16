//
//  AppDelegate.m
//  MVC
//
//  Created by Trung Bao on 12/15/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "AppDelegate.h"
#import "DataManeger.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    DataManeger* dataManager = [DataManeger getSingleton];
    return YES;
}

@end
