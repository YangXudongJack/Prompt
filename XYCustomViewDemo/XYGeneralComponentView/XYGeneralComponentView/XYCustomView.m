//
//  XYCustomView.m
//  XYCustomViewDemo
//
//  Created by yangxudong on 2019/10/30.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYCustomView.h"

@implementation XYCustomView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    id hitView = [super hitTest:point withEvent:event];
    if (hitView == self)
    {
        if (self.transparentEvent)
        {
            return nil;
        }
        else
        {
            return hitView;
        }
    }
    else
    {
        return hitView;
    }
}

@end
