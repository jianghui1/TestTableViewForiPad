//
//  UIView+Extension.m
//  TestTableViewForiPad
//
//  Created by ys on 16/5/4.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

@end
