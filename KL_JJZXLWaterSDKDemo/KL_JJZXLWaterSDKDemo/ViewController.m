//
//  ViewController.m
//  智校乐定制SDK
//
//  Created by 李志权 on 2020/7/13.
//  Copyright © 2020 kailu. All rights reserved.
//

#import "ViewController.h"
#import <KL_JJZXLWaterSDK/KL_JJZXLWaterSDK.h>
#define MQADDRESS  @"mq.zhixiaole.net"
#define IPADDRESS  @"http://klcxkj-qzxy.cn:8492"
#define TEIPHONE  @"13088834213"
@interface ViewController ()


@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
//    余额不足充值
    [KL_JJZXLWaterApi getPayCallBack:^(NSInteger isPayEnough, NSInteger deviceType) {
//        支付成功
        [KL_JJZXLWaterApi rechargePaySuccessful];
    }];
//    订单使用密码校验
    [KL_JJZXLWaterApi orderUsePasswordVerifyTriggerMonitor:^(NSNumber *orderAmount) {
//    密码校验成功
        [KL_JJZXLWaterApi verifyBackWithStatus:YES isPassword:NO tradeId:@"12345678"];
    }];

    // Do any additional setup after loading the view.
}


/// 洗衣机
- (IBAction)washer:(id)sender {

    [KL_JJZXLWaterApi useDevicePresentBUROVC:self devType:2 IPAddress:IPADDRESS MQAddress:MQADDRESS telPhone:TEIPHONE mchId:@1074 getAdsViewCallBack:^(UIView *controllerView, NSInteger position, NSInteger deviceType) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 40, 40)];
        view.backgroundColor = [UIColor redColor];
        [controllerView addSubview:view];
    }];
}

/// 洗澡
- (IBAction)bath:(id)sender {
    [KL_JJZXLWaterApi useDevicePresentBUROVC:self devType:0 IPAddress:IPADDRESS MQAddress:MQADDRESS telPhone:TEIPHONE mchId:@1074 getAdsViewCallBack:^(UIView *controllerView, NSInteger position, NSInteger deviceType) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 40, 40)];
        view.backgroundColor = [UIColor redColor];
        [controllerView addSubview:view];
    }];
}

/// 饮水
- (IBAction)drinkWater:(id)sender {
    [KL_JJZXLWaterApi useDevicePresentBUROVC:self devType:3 IPAddress:IPADDRESS MQAddress:MQADDRESS telPhone:TEIPHONE  mchId:@1074 getAdsViewCallBack:^(UIView *controllerView, NSInteger position, NSInteger deviceType) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 40, 40)];
        view.backgroundColor = [UIColor redColor];
        [controllerView addSubview:view];
    }];
}
/// 吹风机
- (IBAction)hairDryer:(id)sender {
    [KL_JJZXLWaterApi useDevicePresentBUROVC:self devType:7 IPAddress:IPADDRESS MQAddress:MQADDRESS telPhone:TEIPHONE  mchId:@1074 getAdsViewCallBack:^(UIView *controllerView, NSInteger position, NSInteger deviceType) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 40, 40)];
        view.backgroundColor = [UIColor redColor];
        [controllerView addSubview:view];
    }];
}
@end
