//
//  WBWaitingView.h
//  WBWaitngAni
//
//  Created by tuhui－03 on 16/7/6.
//  Copyright © 2016年 wb. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,WBType) {

   WBWaitingThree=1,
   WBWaitingRound,

};

@interface WBWaitingView : UIView



@property(strong,readwrite,nonatomic)UIColor *backViewColor;
@property(strong,readwrite,nonatomic)UIColor *dotColor;
-(void)showInView:(UIView *)view;
@end
