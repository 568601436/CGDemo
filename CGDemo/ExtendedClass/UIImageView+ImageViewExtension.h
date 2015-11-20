//
//  UIImageView+ImageViewExtension.h
//  OSell
//
//  Created by DongShaoHua on 15-2-4.
//  Copyright (c) 2015年 DZSOIN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (ImageViewExtension)
/**
 *  异步下载图片
 *  陈刚
 *  @param url         图片地址
 *  @param placeholder 默认图片
 */
- (void)loadImage:(NSString *)url placeholder:(UIImage *)placeholder;
/**
 *  设置图片圆角
 *  陈刚
 */
- (void)setFaceStyle;


- (void)loadImage:(NSString *)url placeholder:(UIImage *)placeholder block:(void(^)(UIImage*))block;

@end
