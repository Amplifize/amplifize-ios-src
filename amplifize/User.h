//
//  User.h
//  amplifize
//
//  Created by Melih Onvural on 5/2/15.
//  Copyright (c) 2015 Big Fish, Big Pond. All rights reserved.
//

@interface User : NSObject

@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) NSString* display_name;
@property (nonatomic, strong) NSString* single_access_token;

+(RKObjectMapping*)defineUserMapping;

@end
