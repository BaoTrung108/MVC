//
//  VSModel.m
//  MVC
//
//  Created by Trung Bao on 12/15/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "VSModel.h"

@implementation VSModel

- (instancetype) init:(NSString *)name
               number:(NSString *)number
            poisition:(NSString *)poisition
             national:(NSString *)national
             andPhoto:(NSString *)photo {
    if (self = [super init]) {
        self.name = name;
        self.number = number;
        self.poisition = poisition;
        self.national = national;
        NSString* photoFile = [NSString stringWithFormat:@"%@.png",photo];
        self.photo = [UIImage imageNamed:photoFile];
        NSString* iconFile = [NSString stringWithFormat:@"%@0.png",photo];
        self.icon = [UIImage imageNamed:iconFile];
    }
    return self;
}
@end
