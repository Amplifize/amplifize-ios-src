#import "LoginManager.h"
#import "RKMIMETypeSerialization.h"
#import "RKLog.h"
#import "LoginRequest.h"


@implementation LoginManager

-(void)LoginWithEmail:(NSString *)email password:(NSString*)password viewController:(UIViewController*)vc {
    
    LoginRequest *dataObject = [[LoginRequest alloc] init];
    [dataObject setEmail:email];
    [dataObject setPassword:password];
    
    NSURL *baseURL = [NSURL URLWithString:@"http://localhost:3000/login.json"];
    
    AFHTTPClient * client = [AFHTTPClient clientWithBaseURL:baseURL];
    [client setDefaultHeader:@"Accept" value:RKMIMETypeJSON];
    
    RKObjectManager *objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    
    
    RKObjectMapping *requestMapping =  [[LoginRequest defineLoginRequestMapping] inverseMapping];
    
    [objectManager addRequestDescriptor: [RKRequestDescriptor
                                          requestDescriptorWithMapping:requestMapping objectClass:[LoginRequest class] rootKeyPath:nil
                                          ]];
    // what to print
    RKLogConfigureByName("RestKit/Network", RKLogLevelTrace);
    RKLogConfigureByName("Restkit/Network", RKLogLevelDebug);
    
    RKObjectMapping *responseMapping = [User defineUserMapping];
    
    [objectManager addResponseDescriptor:[RKResponseDescriptor
                                          responseDescriptorWithMapping:responseMapping method:RKRequestMethodAny pathPattern:@"" keyPath:nil statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)
                                          
                                          ]];
    
    
    [objectManager setRequestSerializationMIMEType: RKMIMETypeJSON];
    
    [objectManager postObject:dataObject path:@""
                   parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
                       NSLog(@"It Worked: %@", [mappingResult array]);
                       [vc performSegueWithIdentifier:@"loginSuccess" sender:self];
                       
                   } failure:^(RKObjectRequestOperation *operation, NSError *error) {
                       NSLog(@"It Failed: %@", error);
                       
                   }];
}
@end