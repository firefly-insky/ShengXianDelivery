//
//  UIView+SONAViewExtension.m
//  喜马拉雅测试代码
//
//  Created by FJF on 15/11/3.
//  Copyright © 2015年 FjF. All rights reserved.
//

#import "UIView+ViewExtension.h"
#import <MBProgressHUD/MBProgressHUD.h>


@implementation UIView (ViewExtension)
-(void)setWidth:(CGFloat)width{
    
    CGRect frame=self.frame;
    frame.size.width=width;
    self.frame=frame;
}
-(CGFloat)width{
    return self.frame.size.width;
}

-(void)setHeight:(CGFloat)height{
    
    CGRect frame=self.frame;
    frame.size.height=height;
    self.frame=frame; 
}
-(CGFloat)height{
    return self.frame.size.height;
}


-(void)setX:(CGFloat)x{
    CGRect frame=self.frame;
    frame.origin.x=x;
    self.frame=frame;
}
-(CGFloat)x{
    return self.frame.origin.x;
    
}

-(void)setY:(CGFloat)y{
    CGRect frame=self.frame;
    frame.origin.y=y;
    self.frame=frame;
}
-(CGFloat)y{
    return self.frame.origin.y;
    
}


-(void)setCenterX:(CGFloat)centerX{
    CGPoint center=self.center;
    center.x=centerX;
    self.center=center;
}
-(CGFloat)centerX{
    return self.center.x;
}


-(void)setCenterY:(CGFloat)centerY{
    CGPoint center=self.center;
    center.y=centerY;
    self.center=center;
}
-(CGFloat)centerY{
    
    return self.center.y;
}

-(void)showWithMessage:(NSString *)message{

    MBProgressHUD *hud=[[MBProgressHUD alloc] initWithView:[UIApplication sharedApplication].keyWindow];
//    MBProgressHUD *hud=[[MBProgressHUD alloc] initWithView:self];
    if(message){
        hud.mode=MBProgressHUDModeText;
        hud.labelText=message;
    }else{
        hud.mode=MBProgressHUDModeIndeterminate;
    }
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
//    [self addSubview:hud];
    [hud show:YES];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.8 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [hud hide:YES];
        [hud removeFromSuperview];
    });
}

MBProgressHUD *_hud;
-(void)showHUDIndeterminateWithMessage:(NSString*)message {
    _hud=[[MBProgressHUD alloc] initWithView:self];
    _hud.mode=MBProgressHUDModeIndeterminate;
    _hud.labelText=message;
    [self addSubview:_hud];
    [_hud show:YES];
}
-(void)hiddenHUDIndeterminate{
    if(!_hud) return;
    [_hud hide:YES];
    [_hud removeFromSuperview];
}

@end
