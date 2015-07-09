//
//  Girl.m
//  KVO_Demo
//
//  Created by mac on 15/7/8.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import "Girl.h"

#import "Boy.h"

@implementation Girl

-(void)live{

    for (int i = 0; i< HUGE_VALL; i++) {
        
        sleep(1);
        
        NSInteger value =  self.happyValue;
        
        self.happyValue = value--;
        
        self.happyValue = value;
        
    }
}

@end
