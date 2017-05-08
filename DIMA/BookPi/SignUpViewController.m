//
//  SignUpViewController.m
//  BookPi
//
//  Created by Arjun on 4/25/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    imgLogo.layer.cornerRadius=imgLogo.frame.size.height/2;
    imgLogo.clipsToBounds=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
