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
   
    if(txtPassword.text.length==0&&txtPassword.text.length==0)
    {
      //
        [self alertView:@"Please Enter UserName and password.. "];
    
    }else
    {
        if(txtPassword.text.length==0)
        {
        //:
            [self alertView:@"Please Enter  password.. "];
        
        }else if(txtUserName.text.length==0)
        {
            
         //
           [self alertView:@"Please Enter  UserName"];
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
-(void)alertView:(NSString*)Message
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"AlertView" message:Message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              [alert dismissViewControllerAnimated:YES completion:nil];
                                                          }];
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];

}
@end
