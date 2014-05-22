//
//  CsyAppData.m
//  04-Apps
//
//  Created by csy on 5/22/14.
//  Copyright (c) 2014 cl. All rights reserved.
//

#import "CsyAppData.h"

@interface CsyAppData ()




@end

@implementation CsyAppData

- (instancetype)initWthDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.image = [UIImage imageNamed:dict[@"icon"]];
        self.name = dict[@"name"];
    }
    
    return self;
    
    
}

+ (instancetype)appDataWithDictionary:(NSDictionary *)dict
{
//    CsyAppData *data = [[CsyAppData alloc] init];
//    data.image = [UIImage imageNamed:dict[@"icon"]];
//    data.name = dict[@"name"];
    
    return [[CsyAppData alloc] initWthDictionary:dict];
}

@end
