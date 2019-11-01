//
//  XYGeneralComponentBundleManager.h
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/30.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 资源管理类
 */
@interface XYGeneralComponentBundleManager : NSObject

/**
 实例化对象

 @return 对象实体
 */
+ (XYGeneralComponentBundleManager *)sharedInstance;

/**
 获取bundle

 @return bundle
 */
- (NSBundle *)getBundle;

/**
 获取storeboard

 @return storeboard
 */
- (UIStoryboard *)getStoryboard;

/**
 根据名称获取图片

 @param name 图片名称
 @return 图片
 */
- (UIImage *)imageWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
