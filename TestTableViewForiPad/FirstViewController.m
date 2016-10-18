//
//  FirstViewController.m
//  TestTableViewForiPad
//
//  Created by ys on 16/5/4.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "FirstViewController.h"

#import "BaseTableViewCell.h"
#import "Base1TableViewCell.h"

@interface FirstViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableview;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 20) style:UITableViewStyleGrouped];
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    self.tableview.rowHeight = 80;
    
    [self.tableview registerClass:[BaseTableViewCell class] forCellReuseIdentifier:@"cellId"];
//    [self.tableview registerNib:[UINib nibWithNibName:@"Base1TableViewCell" bundle:nil] forCellReuseIdentifier:@"cellId"];
    
    [self.view addSubview:self.tableview];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
//    }
    cell.imageView.image = [UIImage imageNamed:@"2.jpg"];
    cell.textLabel.text = [@(indexPath.row) stringValue];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    NSLog(@"%@", NSStringFromCGRect(cell.frame));
    NSLog(@"%@", NSStringFromCGRect(self.tableview.frame));
    NSLog(@"%@", NSStringFromCGRect(cell.contentView.frame));
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
