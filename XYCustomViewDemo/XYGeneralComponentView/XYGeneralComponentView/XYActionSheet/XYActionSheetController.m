//
//  XYActionSheetController.m
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/31.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYActionSheetController.h"
#import "XYActionSheetCell.h"
#import "XYGeneralComponentBundleManager.h"

@interface XYActionSheetController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property (nonatomic, strong) NSMutableArray <XYActionSheet *>*operations;

@property (nonatomic, copy) void (^selectedBlock)(XYActionSheet *);

@end

@implementation XYActionSheetController

#pragma mark private

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableview.transform = CGAffineTransformMake(1, 0, 0, -1, 0, 0);
    self.tableview.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:.4f];
    [self.tableview reloadData];
    
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(removeCustomView)];
    [view addGestureRecognizer:tap];
    self.tableview.tableFooterView = view;
}

+ (instancetype)loadCustomView
{
    XYActionSheetController *custom = [[[XYGeneralComponentBundleManager sharedInstance] getStoryboard] instantiateViewControllerWithIdentifier:@"XYActionSheetController"];
    custom.userInteractionEnabled = YES;
    return custom;
}

#pragma mark public

- (void)updateOperations:(NSArray<XYActionSheet *> *)operations
{
    if (self.operations == nil)
    {
        self.operations = [NSMutableArray arrayWithArray:operations];
    }
    else
    {
        [self.operations removeAllObjects];
        [self.operations addObjectsFromArray:operations];
    }
    
    if (self.tableview)
    {
        [self.tableview reloadData];
    }
}

- (void)selectedCallback:(void (^)(XYActionSheet * _Nonnull))selected
{
    self.selectedBlock = selected;
}

#pragma mark UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    __weak XYActionSheetController *weakself = self;
    id sheet = [self.operations objectAtIndex:self.operations.count - indexPath.row - 1];
    if ([sheet isMemberOfClass:[XYActionSheet class]])
    {
        return [XYActionSheetCell loadActionSheet:(XYActionSheet *)sheet
                                        tableview:tableView
                                         selected:^(XYActionSheet * _Nonnull actonSheet) {
                                             if (weakself.selectedBlock) {
                                                 weakself.selectedBlock(actonSheet);
                                             }
                                         }];
    }
    else
    {
        
    }
}

- (NSInteger)tableView:(nonnull UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return self.operations.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height = [[UIApplication sharedApplication].delegate window].safeAreaInsets.bottom;
    if (height > .0)
    {
        if (indexPath.row == 0)
        {
            return 44.f + height;
        }
        else
        {
            return 44.f;
        }
    }
    else
    {
        return 44.f;
    }
}

@end
