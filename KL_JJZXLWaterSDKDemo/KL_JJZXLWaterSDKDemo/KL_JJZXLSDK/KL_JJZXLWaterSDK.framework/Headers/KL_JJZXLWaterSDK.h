//
//  KL_JJZXLWaterSDK.h
//  KL_JJZXLWaterSDK
//
//  Created by 李志权 on 2020/6/18.
//  Copyright © 2020 kailu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface KL_JJZXLWaterApi : NSObject


/// SDK 操作
/// @param jumpVC 跳转控制器
/// @param devType  0洗澡，3饮水，2洗衣服
/// @param IPAddress 服务器地址
/// @param telPhone 账号
/// @param mchId mchId
/// @param getAdsViewCallBack controllerView当前控制的view   position 0 = 使用中 1 = 订单完成 deviceType  固定值：0公寓洗澡，2洗衣服，3饮水
+(void)useDevicePresentBUROVC:(UIViewController *)jumpVC devType:(NSInteger)devType IPAddress:(NSString *)IPAddress telPhone:(NSString *)telPhone mchId:(NSNumber *)mchId getAdsViewCallBack:(void(^)(UIView *controllerView,NSInteger position, NSInteger deviceType))getAdsViewCallBack;

/// 凯路sdk调用智校乐客户端支付
/// @param callBack  isPayEnough固定值：0-余额不足，1-余额充足  deviceType 固定值：0公寓洗澡，2洗衣服，3饮水
+(void)getPayCallBack:(void(^)(NSInteger isPayEnough, NSInteger deviceType))callBack;

/// 充值支付成功通知SDK
+(void)rechargePaySuccessful;

/// 订单开始使用密码校验触发监听
/// 订单金额 orderAmount
/// @param callBack 回调事件
+(void)orderUsePasswordVerifyTriggerMonitor:(void(^)(NSNumber *orderAmount))callBack;
/// 密码校验结果
/// @param success 是否成功完成验证
/// @param isPassword 是否需要密码
/// @param trade_id 业务订单号
+(void)verifyBackWithStatus:(BOOL)success isPassword:(BOOL)isPassword tradeId:(NSString*)trade_id;
@end


