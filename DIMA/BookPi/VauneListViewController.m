//
//  VauneListViewController.m
//  BookPi
//
//  Created by Arjun on 4/25/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import "VauneListViewController.h"

@interface VauneListViewController ()

@end

@implementation VauneListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    VanewTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Vcell" forIndexPath:indexPath];
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    cell.imgLogo.layer.cornerRadius=cell.imgLogo.frame.size.width/2;
      cell.imgLogo.clipsToBounds=YES;
    return cell;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    InfoViewController *infoVc=[self.storyboard instantiateViewControllerWithIdentifier:@"InfoViewController"];
    [self.navigationController pushViewController:infoVc animated:YES];
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 5;

}
- (IBAction)btnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
