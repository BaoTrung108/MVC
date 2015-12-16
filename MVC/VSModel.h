//
//  VSModel.h
//  MVC
//
//  Created by Trung Bao on 12/15/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface VSModel : NSObject
@property (nonatomic,strong) NSString* name;
@property (nonatomic,strong) NSString* number;
@property (nonatomic,strong) NSString* poisition;
@property (nonatomic,strong) NSString* national;
@property (nonatomic,strong) UIImage* photo;
@property (nonatomic,strong) UIImage* icon;

- (instancetype) init: (NSString*) name
               number: (NSString*) number
            poisition: (NSString*) poisition
             national: (NSString*) national
             andPhoto: (NSString*) photo;
@end
