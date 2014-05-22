//
//  CsyAppData.h
//  04-Apps
//
//  Created by csy on 5/22/14.
//  Copyright (c) 2014 cl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CsyAppData : NSObject

@property (strong,nonatomic) UIImage *image;
@property (copy,nonatomic) NSString *name;

+ (instancetype)appDataWithDictionary:(NSDictionary *)dict;

- (instancetype)initWthDictionary:(NSDictionary *)dict;


@end
