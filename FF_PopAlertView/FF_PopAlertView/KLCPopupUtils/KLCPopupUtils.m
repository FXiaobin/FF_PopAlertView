//
//  KLCPopupUtils.m
//  FF_PopAlertView
//
//  Created by mac on 2019/4/30.
//  Copyright © 2019 healifeGroup. All rights reserved.
//

#import "KLCPopupUtils.h"
#import <Masonry.h>

@implementation KLCPopupUtils

+(void)showPopupAlertViewWithContentView:(UIView *)contentView{
    
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCenter, KLCPopupVerticalLayoutCenter);
    
    KLCPopup* popup = [KLCPopup popupWithContentView:contentView
                                            showType:KLCPopupShowTypeGrowIn
                                         dismissType:KLCPopupDismissTypeFadeOut
                                            maskType:KLCPopupMaskTypeDimmed
                            dismissOnBackgroundTouch:YES
                               dismissOnContentTouch:NO];
    popup.dimmedMaskAlpha = 0.3;
    
    [popup showWithLayout:layout];
}

+(void)showPopupTopActionSheetViewWithContentView:(UIView *)contentView{
    
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCenter, KLCPopupVerticalLayoutTop);
    
    KLCPopup* popup = [KLCPopup popupWithContentView:contentView
                                            showType:KLCPopupShowTypeSlideInFromTop
                                         dismissType:KLCPopupDismissTypeSlideOutToTop
                                            maskType:KLCPopupMaskTypeDimmed
                            dismissOnBackgroundTouch:YES
                               dismissOnContentTouch:NO];
    popup.dimmedMaskAlpha = 0.3;
    
    [popup showWithLayout:layout];
}

+(void)showPopupBoottomActionSheetViewWithContentView:(UIView *)contentView{
    
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCenter, KLCPopupVerticalLayoutBottom);
    
    KLCPopup* popup = [KLCPopup popupWithContentView:contentView
                                            showType:KLCPopupShowTypeSlideInFromBottom
                                         dismissType:KLCPopupDismissTypeSlideOutToBottom
                                            maskType:KLCPopupMaskTypeDimmed
                            dismissOnBackgroundTouch:YES
                               dismissOnContentTouch:NO];
    popup.dimmedMaskAlpha = 0.3;
    
    [popup showWithLayout:layout];
}

+(void)showPopupLeftActionSheetViewWithContentView:(UIView *)contentView{
    
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutLeft, KLCPopupVerticalLayoutCenter);
    
    KLCPopup* popup = [KLCPopup popupWithContentView:contentView
                                            showType:KLCPopupShowTypeSlideInFromLeft
                                         dismissType:KLCPopupDismissTypeSlideOutToLeft
                                            maskType:KLCPopupMaskTypeDimmed
                            dismissOnBackgroundTouch:YES
                               dismissOnContentTouch:NO];
    popup.dimmedMaskAlpha = 0.3;
    
    [popup showWithLayout:layout];
}

+(void)showPopupRightActionSheetViewWithContentView:(UIView *)contentView{
    
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutRight, KLCPopupVerticalLayoutCenter);
    
    KLCPopup* popup = [KLCPopup popupWithContentView:contentView
                                            showType:KLCPopupShowTypeSlideInFromRight
                                         dismissType:KLCPopupDismissTypeSlideOutToRight
                                            maskType:KLCPopupMaskTypeDimmed
                            dismissOnBackgroundTouch:YES
                               dismissOnContentTouch:NO];
    popup.dimmedMaskAlpha = 0.3;
    
    [popup showWithLayout:layout];
}

+(void)showHUDWithText:(NSString *)text{
    
    CGSize size = [text boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 100.0, [UIScreen mainScreen].bounds.size.height - 300.0) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesDeviceMetrics | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:16.0]} context:nil].size;
    
    UIView *HUD = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width + 60.0, size.height + 50.0)];
    HUD.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8];
    
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.frame = CGRectMake(20.0, 20.0, size.width + 20.0, size.height + 10.0);
    textLabel.text = text;
    textLabel.numberOfLines = 0;
    textLabel.font = [UIFont systemFontOfSize:16.0];
    textLabel.textColor = [UIColor whiteColor];
    textLabel.textAlignment = NSTextAlignmentCenter;
    [HUD addSubview:textLabel];
    
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCenter, KLCPopupVerticalLayoutCenter);
    
    KLCPopup* popup = [KLCPopup popupWithContentView:HUD
                                            showType:KLCPopupShowTypeFadeIn
                                         dismissType:KLCPopupDismissTypeFadeOut
                                            maskType:KLCPopupMaskTypeClear
                            dismissOnBackgroundTouch:NO
                               dismissOnContentTouch:NO];
    
    [popup showWithLayout:layout duration:2.0];
}

+(void)showSuccessHUDWithText:(NSString *)text{
    
    [self showHUDWithText:text image:@"MBProgress_success"];
}

+(void)showFailHUDWithText:(NSString *)text{
    
    [self showHUDWithText:text image:@"MBProgress_fail"];
}

+(void)showInfoHUDWithText:(NSString *)text{
    
    [self showHUDWithText:text image:@"MBProgress_info"];
}

+(void)showHUDWithText:(NSString *)text image:(NSString *)imageName{
    
    CGSize size = [text boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 100, [UIScreen mainScreen].bounds.size.height - 300.0) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesDeviceMetrics | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:16.0]} context:nil].size;
    
    UIView *HUD = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width + 60.0, size.height + 60.0 + 50.0)];
    HUD.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8];
    
    UIImageView *icon = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetWidth(HUD.frame)/2.0 - 20.0, 25.0, 40.0, 40.0)];
    icon.image = [UIImage imageNamed:imageName];
    [HUD addSubview:icon];
    
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.frame = CGRectMake(20.0, CGRectGetMaxY(icon.frame)+ 10.0, size.width + 20.0, size.height + 10.0);
    textLabel.text = text;
    textLabel.numberOfLines = 0;
    textLabel.font = [UIFont systemFontOfSize:16.0];
    textLabel.textColor = [UIColor whiteColor];
    textLabel.textAlignment = NSTextAlignmentCenter;
    [HUD addSubview:textLabel];
    
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCenter, KLCPopupVerticalLayoutCenter);
    
    KLCPopup* popup = [KLCPopup popupWithContentView:HUD
                                            showType:KLCPopupShowTypeFadeIn
                                         dismissType:KLCPopupDismissTypeFadeOut
                                            maskType:KLCPopupMaskTypeClear
                            dismissOnBackgroundTouch:NO
                               dismissOnContentTouch:NO];
    
    [popup showWithLayout:layout duration:2.0];
}


@end
