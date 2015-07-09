//
//  Boy.m
//  KVO_Demo
//
//  Created by mac on 15/7/8.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import "Boy.h"

@implementation Boy


- (void)dealloc
{
    
    [_girlFirend removeObserver:self forKeyPath:@"happyValue"];
    
}

//模拟生活
/*
-(void)live{
    
    for (int i = 0; i< HUGE_VALL; i++) {
        
        sleep(1);
        
        NSInteger value =  _girlFirend.happyValue;
        
        _girlFirend.happyValue = value--;
        
        _girlFirend.happyValue = value;
        
    }
}
 */

//接受变更通知
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{

    if([keyPath isEqual:@"happyValue"]){
    
        NSLog(@"%@",[change objectForKey:@"new"]);

        if ([[change objectForKey:@"new"] integerValue] <= 90) {
        
            NSLog(@"媳妇不高兴了，再不哄要出事");
            
            [self cheerUp];//哄媳妇
        }
    }
}



-(void)cheerUp{

    NSLog(@"男孩把老婆大人哄高兴了😊,可以接着过日子了");
    
    _girlFirend.happyValue = 100;

}

@end
