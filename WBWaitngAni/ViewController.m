//
//  ViewController.m
//  WBWaitngAni
//
//  Created by tuhui－03 on 16/7/6.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "ViewController.h"
#import "WBWaitingView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    WBWaitingView *waiting=[[WBWaitingView alloc]init];
    waiting.backViewColor=[UIColor blackColor];
    waiting.alpha=0.6;
    waiting.dotColor=[UIColor orangeColor];
    [waiting showInView:self.view];
    
    // 我们可以通过.backViewColor来设置提示框背景色，通过.dotColor来设置提示符的颜色

    
    
}



@end
