//
//  main.m
//  NSNotification
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
        
        
    
        Boy*laoWang = [[Boy alloc]init];
        
        Girl*fengjie = [[Girl alloc]init];
        
        [fengjie dayStart];
        
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
