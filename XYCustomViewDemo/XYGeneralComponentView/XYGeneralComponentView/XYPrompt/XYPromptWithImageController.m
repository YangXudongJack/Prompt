//
//  XYLoadingViewController.m
//  XYCustomViewDemo
//
//  Created by yangxudong on 2019/10/29.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYPromptWithImageController.h"
#import "XYGeneralComponentBundleManager.h"

@interface XYPromptWithImageController ()

@property (weak, nonatomic) IBOutlet UIView *coverView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, strong) UIImage *image;

@property (nonatomic, strong) CABasicAnimation *animation;

@end

@implementation XYPromptWithImageController

#pragma mark private

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateImage:self.image];
    [self addAnimation:self.animation];
}

+ (instancetype)loadCustomView
{
    XYPromptWithImageController *custom = [[[XYGeneralComponentBundleManager sharedInstance] getStoryboard] instantiateViewControllerWithIdentifier:@"XYPromptWithImageController"];
    return custom;
}

- (void)removeCustomView
{
    if (self.animation != nil)
    {
        [self.imageView.layer removeAllAnimations];
    }
    [super removeCustomView];
}

#pragma mark public

- (void)updateImage:(UIImage *)image
{
    self.image = image;
    if (self.imageView != nil) {
        self.imageView.image = image;
    }
}

- (void)addAnimation:(CABasicAnimation *)animation
{
    self.animation = animation;
    if (self.imageView != nil && self.image != nil)
    {
        [self.imageView.layer addAnimation:animation
                                    forKey:nil];
    }
}

@end














