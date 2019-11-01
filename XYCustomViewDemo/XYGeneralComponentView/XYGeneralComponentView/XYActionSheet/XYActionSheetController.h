//
//  XYActionSheetController.h
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/31.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYCustomController.h"
#import "XYActionSheet.h"

NS_ASSUME_NONNULL_BEGIN

/**
 底部弹框
 */
@interface XYActionSheetController : XYCustomController

- (void)updateOperations:(NSArray <XYActionSheet *>*)operations;

- (void)selectedCallback:(void (^)(XYActionSheet *actionSheet))selected;

@end

NS_ASSUME_NONNULL_END
