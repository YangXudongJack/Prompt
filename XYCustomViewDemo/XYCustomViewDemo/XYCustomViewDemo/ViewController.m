//
//  ViewController.m
//  XYCustomViewDemo
//
//  Created by yangxudong on 2019/10/29.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "ViewController.h"
#import "XYActionSheetController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)action:(UIButton *)sender {
    XYActionSheetController *prompt = [XYActionSheetController loadCustomView];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [prompt removeCustomView];
//    });
    
    NSMutableArray *array = [NSMutableArray array];
    XYActionSheet *sheet0 = [XYActionSheet new];
    sheet0.title = @"111";
    sheet0.index = 0;
    [array addObject:sheet0];
    
    XYActionSheet *sheet1 = [XYActionSheet new];
    sheet1.title = @"222";
    sheet1.index = 1;
    [array addObject:sheet1];
    
    XYActionSheet *sheet2 = [XYActionSheet new];
    sheet2.title = @"333";
    sheet2.index = 2;
    [array addObject:sheet2];
    
    XYActionSheet *sheet3 = [XYActionSheet new];
    sheet3.title = @"444";
    sheet3.index = 3;
    [array addObject:sheet3];
    
    [prompt updateOperations:array];
    [prompt selectedCallback:^(XYActionSheet * _Nonnull actionSheet) {
        NSLog(@"%@ %d", actionSheet.title, actionSheet.index);
    }];
    [prompt showCustomViewAddTo:self];
}

- (IBAction)testAction:(UIButton *)sender {
    NSLog(@"%s", __FUNCTION__);
}

@end
