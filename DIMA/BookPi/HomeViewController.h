//
//  HomeViewController.h
//  BookPi
//
//  Created by Arjun on 4/21/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constent.h"
@interface HomeViewController : UIViewController
{
 
    __weak IBOutlet UIScrollView *scrollview;
    __weak IBOutlet UIImageView *scrollImage;
    __weak IBOutlet UIPageControl *pageControl;
    
}
- (IBAction)BtnPitchInfo:(id)sender;
- (IBAction)BtnBooking:(id)sender;
- (IBAction)BtnMyBooking:(id)sender;
- (IBAction)BtnAccount:(id)sender;

@end
