//
//  Company.m
//  KVO_Demo
//
//  Created by mac on 15/7/9.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import "Company.h"

@implementation Company

-(void)checkWork{

    [_coder workWithBlock:^(BOOL isFinish) {
        
        isFinish?NSLog(@"小伙子挺能干的，升职加薪，赢取我女儿，将来整个公司都有可能是你的"):NSLog(@"项目还未完成，小伙仍需努力啊！加油～");
        
    }];

}

@end
