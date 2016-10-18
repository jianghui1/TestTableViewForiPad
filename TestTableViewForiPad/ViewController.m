//
//  ViewController.m
//  TestTableViewForiPad
//
//  Created by ys on 16/5/4.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableview;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableview.rowHeight = 80;
    [self.tableview registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellId"];
    self.tableview.backgroundColor = [UIColor yellowColor];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
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
    [self presentViewController:[FirstViewController new] animated:YES completion:nil];
}

@end
