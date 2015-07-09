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
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(cheerUp) name:@"通知名" object:nil];
        
    }
    return self;
}

-(void)cheerUp{

    NSLog(@"开始给某人洗澡🛀了Or do otherTing");
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"method" object:nil];
    

}



@end
