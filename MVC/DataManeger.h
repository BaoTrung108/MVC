//
//  DataManeger.h
//  MVC
//
//  Created by Trung Bao on 12/15/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManeger : NSObject
@property (nonatomic, strong) NSArray* data;

+ (instancetype) getSingleton;

@end
