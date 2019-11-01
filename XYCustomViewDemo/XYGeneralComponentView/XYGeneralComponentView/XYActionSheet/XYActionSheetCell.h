//
//  XYActionSheetTitleCell.h
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/31.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYActionSheet.h"

NS_ASSUME_NONNULL_BEGIN

/**
 底部弹框一般操作cell
 */
@interface XYActionSheetCell : UITableViewCell


/**
 加载cell

 @param actionSheet 操作实体
 @param selected 点击回调
 @return cell实体
 */
+ (instancetype)loadActionSheet:(XYActionSheet *)actionSheet
                      tableview:(UITableView *)tableview
                       selected:(void (^)(XYActionSheet *actonSheet))selected;

@end

NS_ASSUME_NONNULL_END
