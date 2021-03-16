一、    集成步骤  
    1、SDK文件直接拉入工程  
    2、点击工程->Build Phases -> Copy Bundle Resources 添加KL_JJZXLWaterSDK.framework  
    3、点击工程->Build Settings 搜索Enable Bitcode 功能设置为NO  
    4、info.plist配置权限  
    Privacy - Camera Usage Description 相机权限扫码需要  
    Privacy - Bluetooth Peripheral Usage Description 蓝牙权限  
    Privacy - Bluetooth Always Usage Description  蓝牙权限  
    5、    第三方库使用cocoapods导入  
    pod 'AFNetworking','~> 4.0.1'  
    pod 'FMDB', '~> 2.6.2'  
    pod 'MBProgressHUD', '~> 0.9.2'  
    pod 'YYModel', '~> 1.0.4'  
    pod 'KVOController', '~> 1.2.0'  
    pod 'SDWebImage', '~> 3.7.5'  
    pod 'MQTTClient'  
    pod 'YYImage'  
    pod 'SDKQZNetworkOffline'  
    pod 'DateTools', '~> 2.0.0'  
      注意不要跟自己工程里面同样的库造成冲突，如果出现冲突和工程的库二选一。  
二、方法调用  
导入#import <KL_JJZXLWaterSDK/KL_JJZXLWaterSDK.h>  
/// SDK 操作
/// @param jumpVC 跳转控制器
/// @param devType  0洗澡，3饮水，2洗衣服
/// @param IPAddress 服务器地址
/// @param telPhone 账号
/// @param mchId mchId
/// @param getAdsViewCallBack controllerView当前控制的view   position 0 = 使用中 1 = 订单完成 deviceType  固定值：0公寓洗澡，2洗衣服，3饮水，7吹风机
+(void)useDevicePresentBUROVC:(UIViewController *)jumpVC devType:(NSInteger)devType IPAddress:(NSString *)IPAddress telPhone:(NSString *)telPhone mchId:(NSNumber *)mchId getAdsViewCallBack:(void(^)(UIView *controllerView,NSInteger position, NSInteger deviceType))getAdsViewCallBack;

/// 监听广告点击回调  
/// @param clickAdsCallBack 回调事件 adsDic广告信息  
+(void)clickAdsCallBack:(void(^)(NSDictionary *adsDic))clickAdsCallBack;  

/// 凯路sdk调用智校乐客户端支付  
/// @param callBack  isPayEnough固定值：0-余额不足，1-余额充足  deviceType 固定值：0公寓洗澡，2洗衣服，3饮水，7吹风机  
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
