//
//  ViewController.m
//  SideBar
//
//  Created by BQHZ on 16/10/18.
//  Copyright © 2016年 BQHZ. All rights reserved.
//

#import "ViewController.h"
#import "DrawerViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    //添加按钮(左抽屉）
    UIButton *slideBtu = [UIButton buttonWithType:UIButtonTypeCustom];
    slideBtu.frame = CGRectMake(40, 150, 100, 35);
    [slideBtu setTitle:@"侧拉栏(右)" forState:UIControlStateNormal];
    [slideBtu addTarget:self action:@selector(didSlideBtu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:slideBtu];
    
    //添加按钮(右抽屉）
    UIButton *slideRightBtu = [UIButton buttonWithType:UIButtonTypeCustom];
    slideRightBtu.frame = CGRectMake(200, 150, 100, 35);
    [slideRightBtu setTitle:@"侧拉栏(右)" forState:UIControlStateNormal];
    [slideRightBtu addTarget:self action:@selector(didSlideRightBtu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:slideRightBtu];
    
}
//点击打开左侧抽屉
- (void)didSlideBtu:(UIButton *)btu
{
    NSLog(@"点击侧拉篮");
    
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    YRSideViewController *sideVC = [delegate sideViewController];
    [sideVC showLeftViewController:true];
    
}

//点击打开右侧抽屉
- (void)didSlideRightBtu:(UIButton *)btuRight
{
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    YRSideViewController *sideVC = [delegate sideViewController];
    [sideVC showRightViewController:true];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
