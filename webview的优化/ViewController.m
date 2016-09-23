//
//  ViewController.m
//  webview的优化
//
//  Created by apple on 2016/9/23.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "WebViewViewController.h"

@interface ViewController ()<UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *bu = [UIButton buttonWithType:(UIButtonTypeSystem)];
    bu.frame = CGRectMake(0, 90, 375, 60);
    [bu setTitle:@"下一页" forState:(UIControlStateNormal)];
    [bu addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:bu];
    

    
}

-(void)click{
    WebViewViewController *vc = [[WebViewViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
