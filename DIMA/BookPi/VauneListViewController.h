//
//  VauneListViewController.h
//  BookPi
//
//  Created by Arjun on 4/25/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constent.h"
@interface VauneListViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{

    __weak IBOutlet UITableView *tblView;
  
}

- (IBAction)btnBack:(id)sender;

@end
