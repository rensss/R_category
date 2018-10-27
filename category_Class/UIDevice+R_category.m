//
//  UIDevice+R_category.m
//  R_category
//
//  Created by MBP on 2018/10/27.
//  Copyright © 2018年 rzk. All rights reserved.
//

#import "UIDevice+R_category.h"

@implementation UIDevice (R_category)

+ (void)switchNewOrientation:(UIInterfaceOrientation)interfaceOrientation {
    
    NSNumber *resetOrientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    
    [[UIDevice currentDevice] setValue:resetOrientationTarget forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:interfaceOrientation];
    
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}

@end
