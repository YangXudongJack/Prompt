//
//  XYAnimation.m
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/30.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYAnimation.h"

@implementation XYAnimation

+ (CABasicAnimation *)rotationAnimation
{
    CABasicAnimation *animation =  [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.fromValue = [NSNumber numberWithFloat:0.f];
    animation.toValue =  [NSNumber numberWithFloat: M_PI * 2];
    animation.duration  = 2;
    animation.autoreverses = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.repeatCount = MAXFLOAT;
    return animation;
}

@end
