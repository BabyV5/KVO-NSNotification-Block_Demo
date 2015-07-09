//
//  Company.h
//  KVO_Demo
//
//  Created by mac on 15/7/9.
//  Copyright (c) 2015年 Baby_V5. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Coder.h"

@interface Company : NSObject

@property(nonatomic,strong)Coder*coder;

-(void)checkWork;

@end
