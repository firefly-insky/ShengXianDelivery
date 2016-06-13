//
//  UIView+SONAViewExtension.h
//  喜马拉雅测试代码
//
//  Created by FJF on 15/11/3.
//  Copyright © 2015年 FjF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ViewExtension)
@property(nonatomic ,assign)CGFloat width;
@property(nonatomic ,assign)CGFloat height;
@property(nonatomic ,assign)CGFloat x;
@property(nonatomic ,assign)CGFloat y;
@property(nonatomic ,assign)CGFloat centerX;
@property(nonatomic ,assign)CGFloat centerY;
-(void)showWithMessage:(NSString *)message;

-(void)showHUDIndeterminateWithMessage:(NSString*)message;
-(void)hiddenHUDIndeterminate;

@end
