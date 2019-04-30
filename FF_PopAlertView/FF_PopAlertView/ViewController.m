//
//  ViewController.m
//  FF_PopAlertView
//
//  Created by mac on 2019/4/29.
//  Copyright © 2019 healifeGroup. All rights reserved.
//

#import "ViewController.h"

#import "FFPopAlert/FFPopAlert.h"

#import "KLCPopupUtils/KLCPopupUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(showAlert:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
   
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 30)];
    btn1.backgroundColor = [UIColor orangeColor];
    [btn1 addTarget:self action:@selector(showAlert1:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn1];
}

-(void)showAlert:(UIButton *)sender{
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 30)];
    view.backgroundColor = [UIColor purpleColor];
    
    //[KLCPopupUtils showPopupAlertViewWithContentView:view];
    
    [KLCPopupUtils showHUDWithText:@"关注成功！的路口附近阿拉山口打飞机案例是打飞机啊三楼东方丽景爱神的箭发斯蒂芬拉伸发订！发送到发送发送到发送到发送到发送到发s,"];
    
    //[KLCPopupUtils showSuccessHUDWithText:@"关注成功！"];
    
    //[KLCPopupUtils showFailHUDWithText:@"网络请求失败！的路口附近阿拉山口打飞机案例是打飞机啊三楼东方丽景爱神的箭发斯蒂芬拉伸发订！\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n飞机案例是打飞机啊三楼东方丽景爱神的箭发斯蒂芬拉伸"];
    
    //[KLCPopupUtils showInfoHUDWithText:@"请输入手机号码！"];
    
}

-(void)showAlert1:(UIButton *)sender{
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor orangeColor];
    
    FFPopAlert *av = [FFPopAlert new];
    
    [av showContentView:view contentViewSize:CGSizeMake(300, 300) animationType:FFPopAlertAnimationTypeSystemIn];
    
}

@end
