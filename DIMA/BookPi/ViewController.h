//
//  ViewController.h
//  BookPi
//
//  Created by Arjun on 4/20/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constent.h"
@interface ViewController : UIViewController
{
    __weak IBOutlet UICollectionView *collectionView;
    
    __weak IBOutlet UIPageControl *pagecontrol;
}
- (IBAction)BtnSignIn:(id)sender;
- (IBAction)BtnSignUp:(id)sender;

@end

