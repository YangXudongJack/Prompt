//
//  XYGeneralComponentBundleManager.m
//  XYGeneralComponentView
//
//  Created by yangxudong on 2019/10/30.
//  Copyright © 2019 JackYang. All rights reserved.
//

#import "XYGeneralComponentBundleManager.h"

@interface XYGeneralComponentBundleManager()

@property (nonatomic, strong) NSBundle *bundle;

@property (nonatomic, strong) NSBundle *imageBundle;

@property (nonatomic, strong) UIStoryboard *storyboard;

@end

@implementation XYGeneralComponentBundleManager

+ (XYGeneralComponentBundleManager *)sharedInstance
{
    static XYGeneralComponentBundleManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[XYGeneralComponentBundleManager alloc] init];
    });
    return manager;
}

- (instancetype)init
{
    if (self = [super init]) {
        NSBundle *bundle = [NSBundle mainBundle];
        
        NSString *path = [bundle pathForResource:@"XYGeneralComponentView"
                                          ofType:@"framework"];
        bundle = [NSBundle bundleWithPath:path];
        
        self.bundle = bundle;
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"XYCustomView"
                                                             bundle:self.bundle];
        self.storyboard = storyboard;
        
        path = [self.bundle pathForResource:@"XYCustomView"
                                     ofType:@"bundle"];
        bundle = [NSBundle bundleWithPath:path];
        self.imageBundle = bundle;
    }
    return self;
}

- (NSBundle *)getBundle
{
    return self.bundle;
}

- (UIStoryboard *)getStoryboard
{
    return self.storyboard;
}

- (UIImage *)imageWithName:(NSString *)name
{
    if (name == nil)
        return nil;
    
    NSString *path = [self.imageBundle pathForResource:name ofType:@"png"];
    if (path == nil)
        return nil;
    
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    if (image == nil)
        return nil;
    
    return image;
}

@end
