//
//  VanewTableViewCell.h
//  BookPi
//
//  Created by Arjun on 4/30/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VanewTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgLogo;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblAddress;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end
