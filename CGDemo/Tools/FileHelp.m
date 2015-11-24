//
//  FileHelp.m
//  CGDemo
//
//  Created by OSellMobile on 15/11/20.
//  Copyright © 2015年 CGMobile. All rights reserved.
//

#import "FileHelp.h"
static NSString *IMAGE_CACHE_PATH = @"/Library/Caches/Images/";
static NSString *VOICE_CACHE_PATH = @"/Library/Caches/Voices/";
@implementation FileHelp

- (id)init
{
    self = [super init];
    if (self) {
        [self initFilePath];
    }
    return self;
}

- (void)initFilePath{
    NSArray *cachepaths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    if (cachepaths && cachepaths.count > 0)
    {
        NSFileManager *manager = [NSFileManager defaultManager];
        NSError *error = nil;
        
        NSString *imagepath = [NSHomeDirectory() stringByAppendingString: IMAGE_CACHE_PATH];
        
        BOOL exists = [manager fileExistsAtPath: imagepath];
        
        if (!exists)
        {
            if (![manager createDirectoryAtPath: imagepath withIntermediateDirectories: YES attributes: nil error: &error])
            {
                NSLog(@"%@", [error localizedDescription]);
            }
        }
        
        NSString *voicepath = [NSHomeDirectory() stringByAppendingString: VOICE_CACHE_PATH];
        
        exists = [manager fileExistsAtPath: voicepath];
        
        if (!exists)
        {
            if (![manager createDirectoryAtPath: voicepath withIntermediateDirectories: YES attributes: nil error: &error])
            {
                NSLog(@"%@", [error localizedDescription]);
            }
        }
    }
}
+ (FileHelp *)shareInstance{
    static FileHelp *file=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        file=[[FileHelp alloc]init];
    });
    return file;
}

-(NSString *)getImagePathWithUrl:(NSURL *)url{
    NSString *path = [NSHomeDirectory() stringByAppendingFormat:@"%@%lu.jpg", IMAGE_CACHE_PATH, (unsigned long)url.description.hash];;
    return  path;
}


@end
