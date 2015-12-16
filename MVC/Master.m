//
//  Master.m
//  MVC
//
//  Created by trung bao on 15/12/2015.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "Master.h"
#import "VSModel.h"
#import "DataManeger.h"
@interface Master () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation Master
{
    DataManeger* dataManager;
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    dataManager = [DataManeger getSingleton];
    self.pageControl.numberOfPages = dataManager.data.count;
    CGSize scrollViewSize = self.scrollView.bounds.size;
    self.scrollView.delegate = self;
    self.scrollView.contentSize = CGSizeMake(scrollViewSize.width * dataManager.data.count, scrollViewSize.height);
    self.scrollView.pagingEnabled = true;
    int i = 0;
    for (VSModel* model in dataManager.data) {
        UIImageView* imageView = [[UIImageView alloc] initWithImage:model.photo];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.frame = CGRectMake(i * scrollViewSize.width, 0, scrollViewSize.width, scrollViewSize.height);
        [self.scrollView addSubview:imageView];
        i++;
    }
    [self updateLabel:0];
}

#pragma mark - UIscrollView
- (void) scrollViewDidScroll:(UIScrollView *)scrollView {
    self.pageControl.currentPage = self.scrollView.contentOffset.x / self.scrollView.bounds.size.width;
    [self updateLabel:(int)self.pageControl.currentPage];
}
- (void) updateLabel : (int) index {
    VSModel *model = dataManager.data[index];
    self.label.text = [NSString stringWithFormat:@"%@",model.name];
}
- (IBAction)butPageControl:(UIPageControl *)sender {
    self.scrollView.contentOffset = CGPointMake(self.pageControl.currentPage * self.scrollView.bounds.size.width, 0);
}
@end
