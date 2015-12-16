//
//  DataManeger.m
//  MVC
//
//  Created by Trung Bao on 12/15/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "DataManeger.h"
#import "VSModel.h"
@implementation DataManeger

+ (instancetype) getSingleton {
    static DataManeger* dataManager = nil;
    static dispatch_once_t dispatchOnce;
    dispatch_once(&dispatchOnce, ^{
        dataManager = [self new];
        NSString* filePath = [[NSBundle mainBundle] pathForResource:@"Barca" ofType:@"plist"];
        NSArray* raw = [NSArray arrayWithContentsOfFile:filePath];
        NSMutableArray* temp = [[NSMutableArray alloc] initWithCapacity:raw.count];
        for (NSDictionary* item in raw) {
            VSModel* model = [[VSModel alloc] init:[item valueForKey:@"name"]
                                            number:[item valueForKey:@"number"]
                                         poisition:[item valueForKey:@"poisition"]
                                          national:[item valueForKey:@"national"]
                                          andPhoto:[item valueForKey:@"photo"]];
            [temp addObject:model];
        }
        dataManager.data = [NSArray arrayWithArray:temp];
    });
    return dataManager;
}
@end
