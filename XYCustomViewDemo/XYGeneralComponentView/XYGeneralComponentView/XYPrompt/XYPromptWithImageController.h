//
//  XYLoadingViewController.h
//  XYCustomViewDemo
//
//  Created by yangxudong on 2019/10/29.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYPromptController.h"

NS_ASSUME_NONNULL_BEGIN

/**
 自定义文字加图片提示框
 */
@interface XYPromptWithImageController : XYPromptController

/**
 更新图片信息

 @param image 图片
 */
- (void)updateImage:(UIImage *)image;

/**
 给图片添加动画

 @param animation 动画效果
 */
- (void)addAnimation:(CABasicAnimation *)animation;

@end

NS_ASSUME_NONNULL_END
