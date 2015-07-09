//
//  main.m
//  KVO_Demo
//
//  Created by mac on 15/7/8.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#import "Boy.h"
#import "Girl.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
    
        Boy*jack = [[Boy alloc]init];
        
        Girl*rose = [[Girl alloc]init];
        
        jack.girlFirend = rose;
        
        rose.happyValue = 100;
        
        //注册观察者
        //rose是被观察对象 jack是观察者  观察的属性值happyValue 方式：新值或旧值
        [rose addObserver:jack forKeyPath:@"happyValue" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
        
        [rose live];//开始模拟生活
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
