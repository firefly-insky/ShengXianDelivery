//
//  UIView+SDWebImageExtension.h
//  sona
//
//  Created by FJF on 16/5/26.
//  Copyright © 2016年 杭州索那声美科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SDWebImageExtension)

-(void)SONAImageViewSetImageWith:(NSURL *)url placeholderImage:(UIImage *)placeholderImage;

-(void)SONAButtonSetImageWithUrl:(NSURL *)url forState:(UIControlState)state placeholderImage:(UIImage *)placeholderImage;

@end
