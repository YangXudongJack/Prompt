//
//  XYActionSheet.h
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/31.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark XYActionSheet

/**
 底部弹框操作对象
 */
@interface XYActionSheet : NSObject

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) int index;

@end



#pragma mark XYShareSheet

typedef NS_ENUM(NSInteger, XYShareSheetType)
{
    XYShareSheetType_WeChat,
    XYShareSheetType_SMS,
    XYShareSheetType_Ding,
    XYShareSheetType_Copy,
    XYShareSheetType_Email,
    XYShareSheetType_WeChatWork
};

@interface XYShareSheet : XYActionSheet

@property (nonatomic, strong) UIImage *image;

@property (nonatomic, assign) XYShareSheetType type;

@end

NS_ASSUME_NONNULL_END
