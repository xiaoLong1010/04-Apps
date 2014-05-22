//
//  CsyAppData.h
//  04-Apps
//
//  Created by csy on 5/22/14.
//  Copyright (c) 2014 cl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CsyAppData : NSObject

//属性只读
@property (strong,nonatomic,readonly) UIImage *image;
@property (copy,nonatomic,readonly) NSString *name;

//生成数据模型的方法
+ (instancetype)appDataWithDictionary:(NSDictionary *)dict;

- (instancetype)initWthDictionary:(NSDictionary *)dict;


@end
