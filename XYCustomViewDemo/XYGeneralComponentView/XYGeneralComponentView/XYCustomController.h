//
//  XYCustomViewController.h
//  XYCustomViewDemo
//
//  Created by yangxudong on 2019/10/29.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 自定义标准组件的基类
 */
@interface XYCustomController : UIViewController

/**
 是否将点击事件透传
 */
@property (nonatomic, assign) BOOL userInteractionEnabled;

/**
 弹出键盘时位置自适应
 */
@property (nonatomic, assign) BOOL autoAdjustPosition;


/**
 加载自定义视图

 @return 自定义视图
 */
+ (instancetype)loadCustomView;

/**
 显示自定义视图

 @param vc 视图容器
 */
- (void)showCustomViewAddTo:(UIViewController *)vc;

/**
 清除自定义视图
 */
- (void)removeCustomView;

@end

NS_ASSUME_NONNULL_END
