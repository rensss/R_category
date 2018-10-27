//
//  UIDevice+R_category.h
//  R_category
//
//  Created by MBP on 2018/10/27.
//  Copyright © 2018年 rzk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (R_category)

/**
 设置设备方向
 
 @param interfaceOrientation 允许的方向
 */
+ (void)switchNewOrientation:(UIInterfaceOrientation)interfaceOrientation;


@end
