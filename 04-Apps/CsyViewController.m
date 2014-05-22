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

- (void)initDatas
{
    //读取plist文件
    NSString *path = [[NSBundle mainBundle] pathForResource:@"app.plist" ofType:nil];
    NSArray *dicts = [NSArray arrayWithContentsOfFile:path];
    
    //通过plist文件，创建datas
    NSMutableArray *datas = [NSMutableArray array];
    
    for(NSDictionary *dict in dicts)
    {
        [datas addObject:[CsyAppData appDataWithDictionary:dict]];
    }
    
    self.datas = datas;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //初始化数据
    [self initDatas];
    
    //获取数据
    CsyAppData *data = self.datas[2];
    

    
    CsyAppView *view = [CsyAppView appViewWithAppData:data];
    
    [self.view addSubview:view];
    
    view.frame = CGRectMake(30, 30, view.bounds.size.width, view.bounds.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
