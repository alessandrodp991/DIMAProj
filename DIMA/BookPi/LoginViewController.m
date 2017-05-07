//
//  LoginViewController.m
//  BookPi
//
//  Created by Arjun on 4/20/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    imgLogo.layer.cornerRadius=imgLogo.frame.size.height/2;
    imgLogo.clipsToBounds=YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)BtnLogin:(id)sender {
     [self.view endEditing:YES];
    FCAlertView *alert = [[FCAlertView alloc] init];
    if(txtPassword.text.length==0&&txtPassword.text.length==0)
    {
        [alert showAlertInView:self
                     withTitle:@"Error"
                  withSubtitle:@"Please Enter UserName and password.. "
               withCustomImage:nil
           withDoneButtonTitle:nil
                    andButtons:nil];
    
    }else
    {
        if(txtPassword.text.length==0)
        {
            [alert showAlertInView:self
                         withTitle:@"Error"
                      withSubtitle:@"Please Enter  password.. "
                   withCustomImage:nil
               withDoneButtonTitle:nil
                        andButtons:nil];
        
        }else if(txtUserName.text.length==0)
        {
            
            [alert showAlertInView:self
                         withTitle:@"Error"
                      withSubtitle:@"Please Enter  UserName .. "
                   withCustomImage:nil
               withDoneButtonTitle:nil
                        andButtons:nil];
        }else
        {
            HomeViewController *hvc=[self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
            [self.navigationController pushViewController:hvc animated:YES];
            
        
        }
    }
    
}
- (IBAction)btnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
