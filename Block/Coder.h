//
//  Coder.h
//  KVO_Demo
//
//  Created by mac on 15/7/9.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CNBlock) (BOOL isFinish);
@interface Coder : NSObject


@property(nonatomic,assign)CNBlock myBlock;//block属性


-(void)workWithBlock:(CNBlock)block;


@end
