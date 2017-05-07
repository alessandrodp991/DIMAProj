//
//  AccountViewController.m
//  BookPi
//
//  Created by Arjun on 4/30/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import "AccountViewController.h"

@interface AccountViewController ()

@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    imgProfile.layer.cornerRadius=imgProfile.frame.size.height/2;
    imgProfile.clipsToBounds=YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
}



@end
