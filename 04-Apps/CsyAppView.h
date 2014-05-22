//
//  CsyAppView.h
//  04-Apps
//
//  Created by csy on 5/22/14.
//  Copyright (c) 2014 cl. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CsyAppData;

@interface CsyAppView : UIView

//通过数据生成视图
+ (CsyAppView*)appViewWithAppData:(CsyAppData *)data;

@end
