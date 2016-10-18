//
//  BaseTableViewCell.m
//  TestTableViewForiPad
//
//  Created by ys on 16/5/4.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "BaseTableViewCell.h"

#import "UIView+Extension.h"

@implementation BaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
        label.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:label];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    NSLog(@"%@", NSStringFromCGSize(self.imageView.image.size));
    
    NSLog(@"%@", NSStringFromCGRect(self.frame));
    NSLog(@"%@", NSStringFromCGRect(self.contentView.frame));
    NSLog(@"%@", NSStringFromCGRect(self.imageView.frame));
    NSLog(@"%@", NSStringFromCGRect(self.textLabel.frame));
    NSLog(@"%@", NSStringFromCGRect(self.accessoryView.frame));
    self.accessoryView.backgroundColor = [UIColor redColor];
    
    for (UIView *subView in self.subviews) {
        if ([subView isKindOfClass:[UITableViewHeaderFooterView class]]) {
            subView.backgroundColor = [UIColor redColor];
        }
        if ([subView isKindOfClass:[UIButton class]]) {
            subView.backgroundColor = [UIColor yellowColor];
            NSLog(@"%@", NSStringFromCGRect(subView.frame));
            subView.x = [UIScreen mainScreen].bounds.size.width - 23;
        }
        if ([subView isKindOfClass:NSClassFromString(@"_UITableViewCellSeparatorView")]) {
            NSLog(@"%@", NSStringFromCGRect(subView.frame));
            CGRect frame = subView.frame;
            frame.origin.x = 136;
            frame.size.width = [UIScreen mainScreen].bounds.size.width - 136;
            subView.frame = frame;
        }
    }
    
    self.imageView.x = 15;
    self.textLabel.x = self.imageView.x + self.imageView.frame.size.width + 15;
    
    NSLog(@"%@", self.subviews);
    NSLog(@"%@", self.contentView.subviews);
    
}

@end
