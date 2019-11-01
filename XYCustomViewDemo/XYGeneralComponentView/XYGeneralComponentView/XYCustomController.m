//
//  XYCustomViewController.m
//  XYCustomViewDemo
//
//  Created by yangxudong on 2019/10/29.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYCustomController.h"
#import "XYCustomView.h"
#import "XYGeneralComponentBundleManager.h"

@interface XYCustomController ()

@end

@implementation XYCustomController

#pragma mark private

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardDidShow:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardDidHide:)
                                                 name:UIKeyboardDidHideNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardFrameWillChange:)
                                                 name:UIKeyboardWillChangeFrameNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardFrameDidChange:)
                                                 name:UIKeyboardDidChangeFrameNotification
                                               object:nil];
}

- (void)keyboardWillShow:(NSNotification *)notification
{
    if (self.autoAdjustPosition)
    {
        
    }
}

- (void)keyboardDidShow:(NSNotification *)notification
{
    if (self.autoAdjustPosition)
    {
        
    }
}

- (void)keyboardWillHide:(NSNotification *)notification
{
    if (self.autoAdjustPosition)
    {
        
    }
}

- (void)keyboardDidHide:(NSNotification *)notification
{
    if (self.autoAdjustPosition)
    {
        
    }
}

- (void)keyboardFrameWillChange:(NSNotification *)notification
{
    if (self.autoAdjustPosition)
    {
        
    }
}

- (void)keyboardFrameDidChange:(NSNotification *)notification
{
    if (self.autoAdjustPosition)
    {
        
    }
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark public

- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled
{
    _userInteractionEnabled = userInteractionEnabled;
    
    if (userInteractionEnabled)
    {
        XYCustomView *view = (XYCustomView *)self.view;
        view.transparentEvent = userInteractionEnabled;
    }
}

- (void)setAutoAdjustPosition:(BOOL)autoAdjustPosition
{
    _autoAdjustPosition = autoAdjustPosition;
}

+ (instancetype)loadCustomView
{
    XYCustomController *custom = [[[XYGeneralComponentBundleManager sharedInstance] getStoryboard] instantiateViewControllerWithIdentifier:@"XYCustomController"];
    return custom;
}

- (void)showCustomViewAddTo:(UIViewController *)vc
{
    [vc addChildViewController:self];
    [vc.view addSubview:self.view];
}

- (void)removeCustomView
{
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}

@end
