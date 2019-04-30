//
//  FFPopAlert.m
//  YTStsrAlertView
//
//  Created by mac on 2019/4/30.
//  Copyright © 2019 TonyAng. All rights reserved.
//

#import "FFPopAlert.h"

@interface FFPopAlert ()


@property (nonatomic,strong) UIView *maskBg;

@property (nonatomic,strong) UIView *contentView;

@property (nonatomic,assign)  CGSize contentSize;

@property (nonatomic,assign) FFPopAlertAnimationType animationType;

@end

@implementation FFPopAlert

-(instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = [UIColor clearColor];
        self.frame = [UIScreen mainScreen].bounds;
        [self addSubview:self.maskBg];
        
    }
    return self;
}

-(void)showContentView:(UIView *)contentView contentViewSize:(CGSize)contentSize{
    ///固定弹窗动画类型为：FFPopAlertAnimationTypeSystemIn
    [self showContentView:contentView contentViewSize:contentSize animationType:FFPopAlertAnimationTypeSystemIn];
}

-(void)showContentView:(UIView *)contentView contentViewSize:(CGSize)contentSize animationType:(FFPopAlertAnimationType)animationType{
    self.contentView = contentView;
    self.contentSize = contentSize;
    self.animationType = animationType;
    
    self.contentView.frame = CGRectMake(0, 0, contentSize.width, contentSize.height);
    self.contentView.center = self.center;
    
    [self addSubview:contentView];
    
    [self showAlertViewWithAnimationType:animationType];
}


-(void)showAlertViewWithAnimationType:(FFPopAlertAnimationType)animationType{
    
    [[UIApplication sharedApplication].keyWindow addSubview:self];
 
    switch (animationType) {
        case FFPopAlertAnimationTypeFade: {
           
            self.maskBg.alpha = 0.0;
            [UIView animateWithDuration:0.2 animations:^{
                self.maskBg.alpha = 1.0;
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeEaseIn: {
            
            self.contentView.alpha = 0.0;
            self.maskBg.alpha = 0.0;
            CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
            self.contentView.transform = CGAffineTransformScale(CGAffineTransformIdentity,1.3,1.3);
            
            [UIView animateWithDuration:0.2 animations:^{
                self.contentView.transform = transform;
                self.contentView.alpha = 1.0;
                self.maskBg.alpha = 1.0;
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeEaseOut: {
            
            self.contentView.alpha = 0.0;
            self.maskBg.alpha = 0.0;
            CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
            self.contentView.transform = CGAffineTransformScale(CGAffineTransformIdentity,0.6,0.6);
            
            [UIView animateWithDuration:0.2 animations:^{
                self.contentView.transform = transform;
                self.contentView.alpha = 1.0;
                self.maskBg.alpha = 1.0;
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeBounceIn: {
            
            self.contentView.alpha = 0.0;
            self.maskBg.alpha = 0.0;
            CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
            self.contentView.transform = CGAffineTransformScale(CGAffineTransformIdentity,1.3,1.3);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.4 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.contentView.transform = transform;
                self.contentView.alpha = 1.0;
                self.maskBg.alpha = 1.0;
                
            } completion:^(BOOL finished) {
                
            }];

        
        } break;
            
        case FFPopAlertAnimationTypeBounceOut: {
            
            self.contentView.alpha = 0.0;
            self.maskBg.alpha = 0.0;
            CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
            self.contentView.transform = CGAffineTransformScale(CGAffineTransformIdentity,0.6,0.6);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.4 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.contentView.transform = transform;
                self.contentView.alpha = 1.0;
                self.maskBg.alpha = 1.0;
                
            } completion:^(BOOL finished) {
                
            }];
        } break;
            
        case FFPopAlertAnimationTypeSystemIn: {
            self.contentView.alpha = 0.0;
            self.maskBg.alpha = 0.0;
            CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
            self.contentView.transform = CGAffineTransformScale(CGAffineTransformIdentity,1.2,1.2);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.contentView.transform = transform;
                self.contentView.alpha = 1.0;
                self.maskBg.alpha = 1.0;
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeSystemOut: {
            self.contentView.alpha = 0.0;
            self.maskBg.alpha = 0.0;
            CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
            self.contentView.transform = CGAffineTransformScale(CGAffineTransformIdentity,0.6,0.6);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.contentView.transform = transform;
                self.contentView.alpha = 1.0;
                self.maskBg.alpha = 1.0;
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeFromTop: {
            
            self.maskBg.alpha = 0.0;
            
            CGPoint centerSize = self.contentView.center;
            self.contentView.center = CGPointMake(centerSize.x, centerSize.y  - [UIScreen mainScreen].bounds.size.height);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 1.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake(centerSize.x, centerSize.y  + [UIScreen mainScreen].bounds.size.height);
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeFromBottom: {
            
            self.maskBg.alpha = 0.0;
            
            CGPoint centerSize = self.contentView.center;
            self.contentView.center = CGPointMake(centerSize.x, centerSize.y  + [UIScreen mainScreen].bounds.size.height);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 1.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake(centerSize.x, centerSize.y  - [UIScreen mainScreen].bounds.size.height);
                
            } completion:^(BOOL finished) {
                
            }];
        } break;
            
        case FFPopAlertAnimationTypeFromLeft: {
            
            self.maskBg.alpha = 0.0;
            
            CGPoint centerSize = self.contentView.center;
            self.contentView.center = CGPointMake(centerSize.x - [UIScreen mainScreen].bounds.size.width, centerSize.y);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 1.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake(centerSize.x + [UIScreen mainScreen].bounds.size.width, centerSize.y);
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeFromRight: {
            
            self.maskBg.alpha = 0.0;
            
            CGPoint centerSize = self.contentView.center;
            self.contentView.center = CGPointMake(centerSize.x + [UIScreen mainScreen].bounds.size.width, centerSize.y);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 1.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake(centerSize.x - [UIScreen mainScreen].bounds.size.width, centerSize.y);
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeActionSheetFromTop: {
            
            self.maskBg.alpha = 0.0;
            
            CGPoint centerSize = self.contentView.center;
            self.contentView.center = CGPointMake(centerSize.x, -self.contentSize.height / 2.0);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 1.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake(centerSize.x, self.contentSize.height / 2.0);
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeActionSheetFromBottom: {
            
            self.maskBg.alpha = 0.0;
            
            CGPoint centerSize = self.contentView.center;
            self.contentView.center = CGPointMake(centerSize.x, self.contentSize.height / 2.0 + [UIScreen mainScreen].bounds.size.height);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 1.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake(centerSize.x, [UIScreen mainScreen].bounds.size.height - self.contentSize.height / 2.0);
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeActionSheetFromLeft: {
            
            self.maskBg.alpha = 0.0;
            
            CGPoint centerSize = self.contentView.center;
            self.contentView.center = CGPointMake(-self.contentSize.width / 2.0, centerSize.y);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 1.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake( self.contentSize.width / 2.0 , centerSize.y);
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeActionSheetFromRight: {
            
            self.maskBg.alpha = 0.0;
            
            CGPoint centerSize = self.contentView.center;
            self.contentView.center = CGPointMake([UIScreen mainScreen].bounds.size.width + self.contentSize.width / 2.0, centerSize.y);
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 1.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake([UIScreen mainScreen].bounds.size.width - self.contentSize.width / 2.0 , centerSize.y);
                
            } completion:^(BOOL finished) {
                
            }];
            
        } break;
    
        default:
            break;
    }

}

-(void)dismissAlertView{
    
    if (self.animationType >= FFPopAlertAnimationTypeActionSheetFromTop) {
        [self dismissActionSheet];
        
    }else{
        [UIView animateWithDuration:0.3 animations:^{
            [self removeFromSuperview];
        }];
    }
}

-(void)dismissActionSheet {
    
    switch (self.animationType) {
        case FFPopAlertAnimationTypeActionSheetFromTop: {
           
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 0.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake(centerSize.x, -self.contentSize.height / 2.0);
                
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeActionSheetFromBottom: {
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 0.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake(centerSize.x, [UIScreen mainScreen].bounds.size.height + self.contentSize.height / 2.0);
                
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeActionSheetFromLeft: {
            
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 0.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake(-self.contentSize.height / 2.0, centerSize.y);
                
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
            
        } break;
            
        case FFPopAlertAnimationTypeActionSheetFromRight: {
            [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.8 initialSpringVelocity:10.0 options:UIViewAnimationOptionCurveLinear animations:^{
                self.maskBg.alpha = 0.0;
                
                CGPoint centerSize = self.contentView.center;
                self.contentView.center = CGPointMake([UIScreen mainScreen].bounds.size.width + self.contentSize.width / 2.0,centerSize.y);
                
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
        } break;
            
        default:
            break;
    }
}

-(UIView *)maskBg{
    if (_maskBg == nil) {
        _maskBg = [UIView new];
        _maskBg.frame = [UIScreen mainScreen].bounds;
        _maskBg.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
        _maskBg.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissAlertView)];
        [_maskBg addGestureRecognizer:tap];
    }
    return _maskBg;
}

@end
