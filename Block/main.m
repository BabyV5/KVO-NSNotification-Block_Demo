//
//  main.m
//  Block
//
//  Created by mac on 15/7/9.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#import "Company.h"
#import "Coder.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        //初始化对象
        Company*com = [[Company alloc]init];
        
        Coder*coder = [[Coder alloc]init];
        
        //属性赋值
        com.coder = coder;
        
        //检查工作
        [com checkWork];
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
