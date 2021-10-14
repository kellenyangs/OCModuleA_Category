//
//  CTMediator+A.m
//  A_Category
//
//  Created by casa on 2016/12/10.
//  Copyright © 2016年 casa. All rights reserved.
//

#import "CTMediator+OCModuleA.h"

@implementation CTMediator (OCModuleA)

- (UIViewController *)OCModuleA_Category_Swift_ViewControllerWithCallback:(void (^)(NSString *))callback
{
//    return [self performActionWithUrl:[NSURL URLWithString:@"demo://SwiftModuleA/Category_ViewController"] completion:nil];
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    params[kCTMediatorParamsKeySwiftTargetModuleName] = @"SwiftModuleA";
    return [self performTarget:@"SwiftModuleA" action:@"Category_ViewController" params:params shouldCacheTarget:NO];
}

- (UIViewController *)OCModuleA_Category_Objc_ViewControllerWithCallback:(void (^)(NSString *))callback
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"OCModuleA" action:@"Category_ViewController" params:params shouldCacheTarget:NO];
}

@end
