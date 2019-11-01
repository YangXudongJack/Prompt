//
//  XYTableview.m
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/31.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYTableview.h"

@implementation XYTableview

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    id hitview = [super hitTest:point withEvent:event];
    if (hitview == self || hitview == self.tableFooterView)
    {
        return self.tableFooterView;
    }
    else
    {
        return hitview;
    }
}

@end
