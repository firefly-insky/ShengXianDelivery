//
//  UIView+SDWebImageExtension.m
//  sona
//
//  Created by FJF on 16/5/26.
//  Copyright © 2016年 杭州索那声美科技有限公司. All rights reserved.
//

#import "UIView+SDWebImageExtension.h"
#import <UIButton+WebCache.h>
#import <UIImageView+WebCache.h>

@implementation UIView (SDWebImageExtension)

-(void)SONAImageViewSetImageWith:(NSURL *)url placeholderImage:(UIImage *)placeholderImage{
        NSAssert([self isKindOfClass:[UIImageView class]], @"please put a UIImageView");
        [(UIImageView *)self sd_setImageWithURL:url placeholderImage:placeholderImage];
}

-(void)SONAButtonSetImageWithUrl:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholderImage{
    NSAssert([self isKindOfClass:[UIButton class]], @"please put a button");
    [(UIButton *)self sd_setImageWithURL:url forState:state placeholderImage:placeholderImage];
}
@end
