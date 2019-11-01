//
//  XYPromptWithLoadingController.m
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/30.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYPromptWithLoadingController.h"
#import "XYGeneralComponentBundleManager.h"
#import "XYAnimation.h"

@interface XYPromptWithLoadingController ()

@end

@implementation XYPromptWithLoadingController

#pragma mark private

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+ (instancetype)loadCustomView
{
    XYPromptWithLoadingController *custom = (XYPromptWithLoadingController *)[XYPromptWithImageController loadCustomView];
    UIImage *image = [[XYGeneralComponentBundleManager sharedInstance] imageWithName:@"XYCustomView_Prompt_loading"];
    [custom updateImage:image];
    [custom addAnimation:[XYAnimation rotationAnimation]];
    return custom;
}

@end
