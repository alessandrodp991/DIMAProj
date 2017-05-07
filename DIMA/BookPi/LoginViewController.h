//
//  LoginViewController.h
//  BookPi
//
//  Created by Arjun on 4/20/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constent.h"
@interface LoginViewController : UIViewController<UITextFieldDelegate>
{
    __weak IBOutlet UIImageView *imgLogo;

    __weak IBOutlet UIButton *btnLogin;
    __weak IBOutlet UITextField *txtPassword;
    __weak IBOutlet UITextField *txtUserName;
    __weak IBOutlet UIScrollView *scrollview;

}
@property (weak, nonatomic) IBOutlet UIButton *btnFacbook;
- (IBAction)BtnLogin:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnGoogle;
@end
