//
//  CsyAppData.m
//  04-Apps
//
//  Created by csy on 5/22/14.
//  Copyright (c) 2014 cl. All rights reserved.
//

#import "CsyAppData.h"

@interface CsyAppData ()
{
    UIImage *_image;
    NSString *_name;
}


@end

@implementation CsyAppData

//- (void)setImage:(UIImage *) image
//{
//    if (image != _image) {
//        _image = image;
//    }
//}
//
//- (void)setName:(NSString *)name
//{
//    _name = name;
//}
//
//- (UIImage *)image
//{
//    return _image;
//}


- (instancetype)initWthDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        _image = [UIImage imageNamed:dict[@"icon"]];
        _name = dict[@"name"];
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
