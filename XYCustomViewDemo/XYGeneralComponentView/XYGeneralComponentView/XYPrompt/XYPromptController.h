//
//  XYPromptViewController.h
//  XYCustomViewDemo
//
//  Created by yangxudong on 2019/10/29.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYCustomController.h"

NS_ASSUME_NONNULL_BEGIN

/**
 自定义文字提示弹框
 */
@interface XYPromptController : XYCustomController

/**
 更新提示信息

 @param message 提示信息
 */
- (void)updateMessage:(NSString *)message;

/**
 显示提示信息并延迟自动移除

 @param interval 延迟
 @param vc 视图容器
 */
- (void)showPromptInterval:(NSTimeInterval)interval
                     addTo:(UIViewController *)vc;

@end

NS_ASSUME_NONNULL_END
