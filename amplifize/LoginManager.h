#import <Foundation/Foundation.h>
#import "RKObjectManager.h"
#import "User.h"
#import "LoginRequest.h"

@interface LoginManager : NSObject
@property (nonatomic, strong) LoginRequest *dataObject;
@property (nonatomic, strong) RKObjectManager *objectManager;
@property (nonatomic, strong) AFHTTPClient * client;
-(void)LoginWithEmail:(NSString *)email password:(NSString*)password viewController:(UIViewController*)vc;

@end