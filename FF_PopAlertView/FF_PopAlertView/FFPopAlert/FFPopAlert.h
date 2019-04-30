//
//  FFPopAlert.h
//  YTStsrAlertView
//
//  Created by mac on 2019/4/30.
//  Copyright © 2019 TonyAng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, FFPopAlertAnimationType) {
    FFPopAlertAnimationTypeFade = 0,
    FFPopAlertAnimationTypeEaseIn,
    FFPopAlertAnimationTypeEaseOut,
    FFPopAlertAnimationTypeBounceIn,
    FFPopAlertAnimationTypeBounceOut,
    FFPopAlertAnimationTypeSystemIn,
    FFPopAlertAnimationTypeSystemOut,
    FFPopAlertAnimationTypeFromTop,
    FFPopAlertAnimationTypeFromBottom,
    FFPopAlertAnimationTypeFromLeft,
    FFPopAlertAnimationTypeFromRight,
    //以上是从页面中心点显示出来的alter（从中心点直接消失） 以下是从上下左右弹出固定高度的actionSheet（从哪里出来就回到哪里）
    FFPopAlertAnimationTypeActionSheetFromTop,
    FFPopAlertAnimationTypeActionSheetFromBottom,
    FFPopAlertAnimationTypeActionSheetFromLeft,
    FFPopAlertAnimationTypeActionSheetFromRight
};

@interface FFPopAlert : UIView

///自己项目用就固定一个动画类型就行了
-(void)showContentView:(UIView *)contentView contentViewSize:(CGSize)contentSize;

///通用
-(void)showContentView:(UIView *)contentView contentViewSize:(CGSize)contentSize animationType:(FFPopAlertAnimationType)animationType;

-(void)showAlertViewWithAnimationType:(FFPopAlertAnimationType)animationType;

-(void)dismissAlertView;


@end

NS_ASSUME_NONNULL_END
