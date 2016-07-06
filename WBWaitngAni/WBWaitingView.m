//
//  WBWaitingView.m
//  WBWaitngAni
//
//  Created by tuhui－03 on 16/7/6.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "WBWaitingView.h"

@interface WBWaitingView()
{
    int width;
  

}

@end

@implementation WBWaitingView


-(void)showInView:(UIView *)view
{
    NSLog(@"%f,%f",view.frame.size.width,view.frame.size.height);
    
    if (view.frame.size.width<view.frame.size.height) {
        
        width=view.frame.size.width;
        
    }else
    {
        width=view.frame.size.height;
    
    }
    
    self.frame=CGRectMake(view.frame.size.width/2-width/8, view.frame.size.height/2-width/8, width/4, width/4);
    self.backgroundColor=[UIColor clearColor];
    
    [self creatWaitThree];

    [view addSubview:self];

}
-(void)creatWaitThree{

    CAReplicatorLayer *rep=[CAReplicatorLayer layer];
    rep.bounds=self.bounds;
    rep.cornerRadius=10;
    rep.position=rep.position=CGPointMake(self.frame.size.width/2, self.frame.size.height/2);;
    rep.backgroundColor=_backViewColor.CGColor;
    [self.layer addSublayer:rep];
    
   
    CALayer *dotLayer=[CALayer layer];
    
    dotLayer.bounds=CGRectMake(0, 0, self.frame.size.width/6, self.frame.size.width/6);
    dotLayer.position=CGPointMake(self.frame.size.width/6,self.frame.size.height/2 );
    dotLayer.backgroundColor=_dotColor.CGColor;
    dotLayer.cornerRadius=self.frame.size.width/12;
    [rep addSublayer:dotLayer];
    
    rep.instanceCount=3;
    rep.instanceTransform=CATransform3DMakeTranslation(self.frame.size.width/3, 0, 0);
    
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation.duration=1.0;
    animation.fromValue=@1;
    animation.toValue=@0;
    animation.repeatCount=MAXFLOAT;
    [dotLayer addAnimation:animation forKey:nil];
    
    rep.instanceDelay=1.0/3;
    
    dotLayer.transform = CATransform3DMakeScale(0, 0, 0);

}

@end
