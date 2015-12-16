//
//  Detail1.m
//  MVC
//
//  Created by trung bao on 16/12/2015.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "Detail1.h"
#import "DataManeger.h"
#import "VSModel.h"
#import "Detail2.h"

@interface Detail1 ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation Detail1
{
    DataManeger* dataManeger;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    dataManeger = [DataManeger getSingleton];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataManeger.data.count;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    VSModel* model = dataManeger.data[indexPath.row];
    cell.textLabel.text = model.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@ - %@",model.national,model.poisition,model.number];
    cell.imageView.image = model.icon;
    return cell;
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    Detail2* detail2 = (Detail2*)segue.destinationViewController;
    NSIndexPath* selecterIndex = [self.tableView indexPathForSelectedRow];
    detail2.model = dataManeger.data[selecterIndex.row];
}
@end
