//
//  XYLoadingController.m
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/31.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYLoadingController.h"
#import "XYAnimation.h"
#import "XYGeneralComponentBundleManager.h"

@interface XYLoadingController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@end

@implementation XYLoadingController

#pragma mark private

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [[XYGeneralComponentBundleManager sharedInstance] imageWithName:@"XYCustomView_Prompt_loading_white"];
    self.imageview.image = image;
    [self.imageview.layer addAnimation:[XYAnimation rotationAnimation]
                                forKey:nil];
}

- (void)removeCustomView
{
    [self.imageview.layer removeAllAnimations];
    [super removeCustomView];
}

+ (instancetype)loadCustomView
{
    XYLoadingController *custom = [[[XYGeneralComponentBundleManager sharedInstance] getStoryboard] instantiateViewControllerWithIdentifier:@"XYLoadingController"];
    return custom;
}

#pragma mark public



@end
