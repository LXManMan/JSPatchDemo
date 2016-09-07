//
//  AppDelegate.m
//  JSPatchDemo
//
//  Created by chuanglong02 on 16/9/1.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [JSPatch startWithAppKey:@"997e43989aa7ffd4"];
//     [JSPatch testScriptInBundle];
    //用来检测回调的状态，是更新或者是执行脚本之类的，相关信息，会打印在你的控制台
    [JSPatch setupCallback:^(JPCallbackType type, NSDictionary *data, NSError *error) {
        
    }];

    [JSPatch setupRSAPublicKey:@"-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC1johX+fU5dU7832xWyiayQCa+\n6IQdNN35IALMnvOEX1PNxpxmTlvBn/BNx+mZxE12aojXmT6V407AM2ANwZ5XCEG3\nhoTCyKPYC5L3bq5oLQnIO3JEwYhvVjHj/UrosSV4Rym8+KjPs5qvZlFVaWrOnmrF\n4vfO01BJbIawR2k8WQIDAQAB\n-----END PUBLIC KEY-----"];
#ifdef DEBUG
    [JSPatch setupDevelopment];
#endif
    [JSPatch sync];
    
//    NSSetUncaughtExceptionHandler(&UncaughtExceptionHandler);
    
    
    return YES;
}
//void UncaughtExceptionHandler(NSException *exception)
//{
//    //获取异常信息
//    NSArray *arr = [exception callStackSymbols];
//    NSString *reason = [exception reason];
//    
//    //接受异常信息的邮箱
//    NSString *name = [exception name];
//    NSArray *nameArray = [NSArray arrayWithObjects:@"someBody@163.com", nil];
//    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
//    NSString *app_Version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
//    NSString *model = [UIDevice currentDevice].model;
//    //手机型号
//    NSString *systemVerson =[UIDevice currentDevice].systemVersion;
//
//    //构造Mail URL，也可以做成弹出框等其他方式保存或者展示提示信息
//    NSString *urlStr = [NSString stringWithFormat:@"mailto:%@?subject=Megafon-HD Bug Report &body=Thanks for your coorperation!<br><br><br>"
//                        "AppName:SomeAPP<br>"\
//                        "Version:%@<br>"\
//                        "Build:%@<br>"\
//                        "Detail:<br>%@<br>--------------------------<br>%@<br>---------------------<br>%@",
//                        app_Version,model,nameArray,
//                        name,reason,[arr componentsJoinedByString:@"<br>"]];
//    
//    //调用系统能力 发送邮件
//    NSURL *url = [NSURL URLWithString:[urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
//    [[UIApplication sharedApplication] openURL:url];
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
