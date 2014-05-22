//
//  CsyAppView.m
//  04-Apps
//
//  Created by csy on 5/22/14.
//  Copyright (c) 2014 cl. All rights reserved.
//

#import "CsyAppView.h"
#import "CsyAppData.h"

@interface CsyAppView ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIButton *downloadBtn;

@end

@implementation CsyAppView


+ (CsyAppView*)appViewWithAppData:(CsyAppData *)data
{
    //通过xib文件，生成视图
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"app" owner:nil options:nil];
    CsyAppView * view = views[0];
    
    //用数据填充视图
    view.imageView.image = data.image;
    view.name.text = data.name;
    
    return view;
}

- (IBAction)downloadClick:(UIButton *)sender {
    
    NSLog(@"click");
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
    label.center = CGPointMake(160, 400);
    label.text = self.name.text;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor redColor];
    label.backgroundColor = [UIColor purpleColor];
    label.alpha = 1.0;
    
    [self.superview addSubview:label];
    
    [UIView animateWithDuration:2.0 animations:^{
        label.alpha = 0.0;
    } completion:^(BOOL finished) {
        [label removeFromSuperview];
    }];
}

@end
