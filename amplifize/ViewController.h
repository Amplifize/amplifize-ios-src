//
//  ViewController.h
//  amplifize
//
//  Created by Melih Onvural on 12/13/14.
//  Copyright (c) 2014 Big Fish, Big Pond. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *loginEmail;
@property (strong, nonatomic) IBOutlet UITextField *loginPassword;

- (IBAction)login:(id)sender;

@end

