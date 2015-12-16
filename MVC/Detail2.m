//
//  Detail2.m
//  MVC
//
//  Created by trung bao on 16/12/2015.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "Detail2.h"

@interface Detail2 ()
@property (weak, nonatomic) IBOutlet UIImageView *images;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation Detail2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.images.image = self.model.photo;
    self.label.text = [NSString stringWithFormat:@"%@\n %@\n %@\n %@",self.model.name,self.model.poisition,self.model.number,self.model.national];
}
- (IBAction)onTapPhoto:(UITapGestureRecognizer *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}



@end
