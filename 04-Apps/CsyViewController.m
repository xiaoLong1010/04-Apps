//
//  CsyViewController.m
//  04-Apps
//
//  Created by csy on 5/22/14.
//  Copyright (c) 2014 cl. All rights reserved.
//

#import "CsyViewController.h"
#import "CsyAppData.h"
#import "CsyAppView.h"

@interface CsyViewController ()

@end

@implementation CsyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDictionary *dict = @{@"name":@"cool pao",@"icon":@"icon_00"};
    
    //获取数据
    CsyAppData *data = [CsyAppData appDataWithDictionary:dict];
    
    //视图
	NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"app" owner:nil options:nil];
    
    CsyAppView * view = views[0];
    
    view.imageView.image = data.image;
    view.name.text = data.name;
    
    [self.view addSubview:view];
    
    view.frame = CGRectMake(30, 30, view.bounds.size.width, view.bounds.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
