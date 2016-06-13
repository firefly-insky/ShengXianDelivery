//
//  SXTabBar.m
//  SXDelivery
//
//  Created by FJF on 16/6/13.
//  Copyright © 2016年 生鲜商品配送. All rights reserved.
//

#import "SXTabBar.h"

@implementation SXTabBar

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
    
    }
    return  self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    CGFloat buttonW = self.width / 4.0;
    CGFloat i = 0;
    for (UIView *tabBarButton in self.subviews) {
        if (![NSStringFromClass(tabBarButton.class) isEqualToString:@"UITabBarButton"]) continue;
        tabBarButton.width = buttonW;
        tabBarButton.x = i * buttonW;
        if (i > 1) tabBarButton.x += buttonW;
        i++;
    }
}

@end
