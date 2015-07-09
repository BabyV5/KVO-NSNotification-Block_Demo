//
//  Coder.m
//  KVO_Demo
//
//  Created by mac on 15/7/9.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import "Coder.h"

@implementation Coder


-(void)workWithBlock:(CNBlock)block{

    NSLog(@"码代码ing～请等待几秒钟＝（≥ _ ≤）＝");
    
    [self performSelector:@selector(doSomething) withObject:nil afterDelay:3];
    
    //回调
    _myBlock = block;

}

-(void)doSomething{
    
    _myBlock(NO);//调用block
    
}

@end
