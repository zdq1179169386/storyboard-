//
//  UIWindow+Extension.m
//  BquApp
//
//  Created by yb on 16/3/2.
//  Copyright © 2016年 yb. All rights reserved.
//

#import "UIWindow+Extension.h"
#import "Bqu_TabBarController.h"
#import <MMDrawerController.h>
#import "Bqu_DrawerLeftController.h"
#import "Bqu_DrawerRightController.h"

@interface UIWindow ()

//@property (nonatomic,strong) MMDrawerController * drawerController;

@end

@implementation UIWindow (Extension)

- (void)switchRootViewController
{
   
    Bqu_TabBarController * tb = [[Bqu_TabBarController alloc] init];
    
    
    Bqu_DrawerLeftController * leftSideDrawerViewController = [UIStoryboard storyboardWithName:@"Left" bundle:nil].instantiateInitialViewController;
    
    Bqu_DrawerRightController * rightSideDrawerViewController = [UIStoryboard storyboardWithName:@"Right" bundle:nil].instantiateInitialViewController;
    
    //    UINavigationController * navigationController = [[MMNavigationController alloc] initWithRootViewController:centerViewController];
    //    [navigationController setRestorationIdentifier:@"MMExampleCenterNavigationControllerRestorationKey"];
    //    UINavigationController * rightSideNavController = [[MMNavigationController alloc] initWithRootViewController:rightSideDrawerViewController];
    //    [rightSideNavController setRestorationIdentifier:@"MMExampleRightNavigationControllerRestorationKey"];
    //    UINavigationController * leftSideNavController = [[MMNavigationController alloc] initWithRootViewController:leftSideDrawerViewController];
    //    [leftSideNavController setRestorationIdentifier:@"MMExampleLeftNavigationControllerRestorationKey"];
    MMDrawerController * drawerVC = [[MMDrawerController alloc]
                             initWithCenterViewController:tb
                             leftDrawerViewController:leftSideDrawerViewController
                             rightDrawerViewController:rightSideDrawerViewController];
    [drawerVC setShowsShadow:NO];
    [drawerVC setRestorationIdentifier:@"MMDrawer"];
    [drawerVC setMaximumRightDrawerWidth:200.0];
    [drawerVC setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [drawerVC setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    //    [self.drawerController
    //     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
    //         MMDrawerControllerDrawerVisualStateBlock block;
    //         block = [[MMExampleDrawerVisualStateManager sharedManager]
    //                  drawerVisualStateBlockForDrawerSide:drawerSide];
    //         if(block){
    //             block(drawerController, drawerSide, percentVisible);
    //         }
    //     }];
    
    UIColor * tintColor = [UIColor colorWithRed:29.0/255.0
                                          green:173.0/255.0
                                           blue:234.0/255.0
                                          alpha:1.0];
    [self setTintColor:tintColor];
    [self setRootViewController:drawerVC];
}

@end
