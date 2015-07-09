//
//  Girl.h
//  KVO_Demo
//
//  Created by mac on 15/7/8.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Boy;

@interface Girl : NSObject

@property(nonatomic,weak)Boy*boyFirend;//男朋友

@property(nonatomic,assign)NSInteger happyValue;//高兴值

-(void)live;//模拟生活

@end
