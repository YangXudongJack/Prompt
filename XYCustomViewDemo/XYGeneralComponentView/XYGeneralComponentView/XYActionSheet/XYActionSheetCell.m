//
//  XYActionSheetTitleCell.m
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/31.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYActionSheetCell.h"
#import "XYGeneralComponentBundleManager.h"

@interface XYActionSheetCell()

@property (nonatomic, strong) XYActionSheet *actionSheet;

@property (weak, nonatomic) IBOutlet UILabel *operationTieleLabel;

@property (nonatomic, copy) void (^selectedBlock)(XYActionSheet *);

@end

@implementation XYActionSheetCell

#pragma mark private

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.transform = CGAffineTransformMake(1, 0, 0, -1, 0, 0);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
}

- (void)setActionSheet:(XYActionSheet *)actionSheet
{
    _actionSheet = actionSheet;
    
    self.operationTieleLabel.text = actionSheet.title;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    id hitview = [super hitTest:point withEvent:event];
    if (hitview == self.contentView && event.allTouches.count == 1) {
        if (self.selectedBlock) {
            self.selectedBlock(self.actionSheet);
        }
    }
    return hitview;
}

#pragma mark public

+ (instancetype)loadActionSheet:(XYActionSheet *)actionSheet
                      tableview:(UITableView *)tableview
                       selected:(void (^)(XYActionSheet * _Nonnull))selected
{
    XYActionSheetCell *cell = [tableview dequeueReusableCellWithIdentifier:@"XYActionSheetCell"];
    if (cell == nil) {
        cell = [[[XYGeneralComponentBundleManager sharedInstance] getBundle] loadNibNamed:@"XYActionSheetTitleCell"
                                                                                    owner:nil
                                                                                  options:nil].firstObject;
    }
    cell.actionSheet = actionSheet;
    cell.selectedBlock = selected;
    return cell;
}

@end
