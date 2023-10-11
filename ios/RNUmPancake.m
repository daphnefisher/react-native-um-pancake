//
//  RNUmPancake.m
//  RNUmPancake
//
//  Created by zack on 10/11/23.
//

#import "RNUmPancake.h"
#import <RNUrbanHappy/RNUMConfigure.h>
#import <UMPush/UMessage.h>

@implementation RNUmPancake

- (void)blueSky_setUMengKey:(NSString *)umkey umChannel:(NSString *)umChannel withOptions:(NSDictionary *)launchOptions{
  [RNUMConfigure initWithAppkey:umkey channel:umChannel];
  UMessageRegisterEntity *entity = [[UMessageRegisterEntity alloc] init];
  entity.types = UMessageAuthorizationOptionBadge|UMessageAuthorizationOptionAlert;
  [UMessage registerForRemoteNotificationsWithLaunchOptions:launchOptions Entity:entity completionHandler:^(BOOL granted, NSError * _Nullable error) {
    if (granted) {
    } else {
    }
  }];
}

@end
