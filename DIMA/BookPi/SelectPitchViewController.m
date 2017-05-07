//
//  SelectPitchViewController.m
//  BookPi
//
//  Created by Arjun on 4/21/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import "SelectPitchViewController.h"

@interface SelectPitchViewController ()

@end

@implementation SelectPitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)SelectDateBtn:(id)sender {
    SelectTimeViewController*stvc=[self.storyboard instantiateViewControllerWithIdentifier:@"SelectTimeViewController"];
    [self.navigationController pushViewController:stvc animated:YES];
}
@end
