#import "RNUmPancake.h"
#import "RNUMConfigure.h"
#import <UMPush/UMessage.h>

@implementation RNUmPancake

static RNUmPancake *instance = nil;

+ (instancetype)shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}

- (void)setUMengKey:(NSString *)umkey umChannel:(NSString *)umChannel withOptions:(NSDictionary *)launchOptions {
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
