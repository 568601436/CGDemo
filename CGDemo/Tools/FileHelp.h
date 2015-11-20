//
//  FileHelp.h
//  CGDemo
//
//  Created by OSellMobile on 15/11/20.
//  Copyright © 2015年 CGMobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileHelp : NSObject
/**
 *  返回文件帮助单例
 *
 *  @return FileHelp
 */
+ (FileHelp *)shareInstance;

/**
 *  根据url生成本地唯一图片路径
 *
 *  @param url url
 *
 *  @return 返回图片路径
 */
-(NSString *)getImagePathWithUrl:(NSURL *)url;

@end
