//
//  CsyViewController.m
//  04-Apps
//
//  Created by csy on 5/22/14.
//  Copyright (c) 2014 cl. All rights reserved.
//

#import "CsyViewController.h"

@interface CsyViewController ()

@end

@implementation CsyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"app" owner:nil options:nil];
    
    UIView * view = views[0];
    
    [self.view addSubview:view];
    
    view.frame = CGRectMake(0, 0, view.bounds.size.width, view.bounds.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
