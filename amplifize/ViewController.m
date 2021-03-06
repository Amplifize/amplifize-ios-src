//
//  ViewController.m
//  amplifize
//
//  Created by Melih Onvural on 12/13/14.
//  Copyright (c) 2014 Big Fish, Big Pond. All rights reserved.
//

#import "ViewController.h"
#import <RestKit/RestKit.h>
#import "LoginManager.h"
#import "LoginSegue.h"
#import "User.h"

@interface ViewController ()
    @property (nonatomic, strong) NSArray *user;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    [[LoginManager alloc] LoginWithEmail:self.loginEmail.text password:self.loginPassword.text viewController:self];
}

@end
