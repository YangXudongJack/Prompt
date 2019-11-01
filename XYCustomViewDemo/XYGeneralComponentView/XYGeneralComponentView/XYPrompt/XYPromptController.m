//
//  XYPromptViewController.m
//  XYCustomViewDemo
//
//  Created by yangxudong on 2019/10/29.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYPromptController.h"
#import "XYGeneralComponentBundleManager.h"

@interface XYPromptController ()

@property (weak, nonatomic) IBOutlet UIView *coverView;

@property (weak, nonatomic) IBOutlet UILabel *promptLabel;

@property (nonatomic, copy) NSString *message;

@end

@implementation XYPromptController

#pragma mark private

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.coverView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:.7f];
    self.promptLabel.text = self.message;
}

+ (instancetype)loadCustomView
{
    XYPromptController *custom = [[[XYGeneralComponentBundleManager sharedInstance] getStoryboard] instantiateViewControllerWithIdentifier:@"XYPromptController"];
    return custom;
}

#pragma mark public

- (void)updateMessage:(NSString *)message
{
    self.message = message;
    if (self.promptLabel != nil) {
        self.promptLabel.text = message;
    }
}

- (void)showPromptInterval:(NSTimeInterval)interval
                     addTo:(UIViewController *)vc
{
    [self showCustomViewAddTo:vc];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self removeCustomView];
    });
}

@end
