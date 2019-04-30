//
//  KLCPopupUtils.h
//  FF_PopAlertView
//
//  Created by mac on 2019/4/30.
//  Copyright © 2019 healifeGroup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import <KLCPopup/KLCPopup.h>

NS_ASSUME_NONNULL_BEGIN

@interface KLCPopupUtils : NSObject

/// alertView （中心弹窗）
+ (void)showPopupAlertViewWithContentView:(UIView *)contentView;

/// actionSheet （上下左右弹出）
+(void)showPopupTopActionSheetViewWithContentView:(UIView *)contentView;
+(void)showPopupBoottomActionSheetViewWithContentView:(UIView *)contentView;
+(void)showPopupLeftActionSheetViewWithContentView:(UIView *)contentView;
+(void)showPopupRightActionSheetViewWithContentView:(UIView *)contentView;

/// 吐司提示
+(void)showHUDWithText:(NSString *)text;
///自定义吐丝提示 文本和图标
+(void)showHUDWithText:(NSString *)text image:(NSString *)imageName;
///固定图片 成功失败警告 吐丝
+(void)showSuccessHUDWithText:(NSString *)text;
+(void)showFailHUDWithText:(NSString *)text;
+(void)showInfoHUDWithText:(NSString *)text;



@end

NS_ASSUME_NONNULL_END
