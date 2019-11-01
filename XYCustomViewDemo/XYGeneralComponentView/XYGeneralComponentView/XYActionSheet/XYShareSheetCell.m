//
//  XYShareSheetCell.m
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/31.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYShareSheetCell.h"
#import "XYActionSheet.h"
#import "XYGeneralComponentBundleManager.h"

#pragma mark XYShareItemCell

@interface XYShareItemCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation XYShareItemCell

+ (instancetype)loadShare:(UICollectionView *)collectionview
                indexPath:(NSIndexPath *)indexPath
                 withItem:(XYShareSheet *)sheet{
    XYShareItemCell *cell = [collectionview dequeueReusableCellWithReuseIdentifier:@"XYShareItemCell"
                                                                      forIndexPath:indexPath];
    if (cell == nil) {
        NSArray *xibs = [[[XYGeneralComponentBundleManager sharedInstance] getBundle] loadNibNamed:@"XYActionSheetTitleCell"
                                                                                             owner:nil
                                                                                           options:nil];
        for (id xib in xibs) {
            if ([xib isMemberOfClass:[self class]]) {
                cell = (XYShareItemCell *)xib;
            }
        }
    }
    return cell;
}

@end

#pragma mark XYShareSheetCell

@interface XYShareSheetCell() <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionview;

@end

@implementation XYShareSheetCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.collectionview.delegate = self;
    self.collectionview.dataSource = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
