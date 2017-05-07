//
//  SelectTimeViewController.h
//  BookPi
//
//  Created by Arjun on 4/21/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constent.h"
@interface SelectTimeViewController : UIViewController<UITextFieldDelegate,UIPickerViewDataSource,UIPickerViewDelegate>
{
    UIPickerView *myPickerView;
    NSArray *pickerArray;

    __weak IBOutlet UITextField *myTextField;
    __weak IBOutlet UICollectionView *selecttimeCollectionView;
}
- (IBAction)BtnConfirmDetails:(id)sender;
- (IBAction)BtnBack:(id)sender;
@end
