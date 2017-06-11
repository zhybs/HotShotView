//
//  ViewController.m
//  HotShotView
//
//  Created by zhaoyubin on 16/9/23.
//  Copyright © 2016年 zhaoyubin. All rights reserved.
//

#import "ViewController.h"
#import "HotShotView.h"
#import "HotShotDataGenerate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *areaArray = [[NSMutableArray alloc]init];
    NSMutableArray *lineArray = [[NSMutableArray alloc]init];
    
    HotShotDataGenerate *dg = [[HotShotDataGenerate alloc]init];
    [dg generateDataWithAraePoints:&areaArray linePoints:&lineArray];
    
    HotShotView *shotView = [[HotShotView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 64)];
    shotView.hotShotArray = areaArray;
    shotView.sitelineArray = lineArray;
    
    [self.view addSubview:shotView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
