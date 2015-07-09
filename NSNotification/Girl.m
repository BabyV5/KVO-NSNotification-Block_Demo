//
//  Girl.m
//  KVO_Demo
//
//  Created by mac on 15/7/8.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import "Girl.h"

@implementation Girl

//移除通知
- (void)dealloc
{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _cleanValue = 100;//初始值
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reset) name:@"method" object:nil];
    }
    return self;
}


-(void)dayStart{
    
    for (int i = 0; i<HUGE_VALL; i++) {
        
        _cleanValue --;
        
        NSLog(@"清洁值：%ld",_cleanValue);
        
        sleep(1);
        
        if (_cleanValue <= 80) {
            
            [[NSNotificationCenter defaultCenter] postNotificationName:@"通知名" object:nil];
            
        }
    }
}

//重置
-(void)reset{

    _cleanValue = 100;
    
    NSLog(@"干干净净，高高兴兴");
    
}



@end
