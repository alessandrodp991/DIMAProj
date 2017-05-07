//
//  HomeViewController.m
//  BookPi
//
//  Created by Arjun on 4/21/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
{
    NSArray *imagesArray;
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    scrollview.tag = 1;
    scrollview.autoresizingMask=UIViewAutoresizingNone;
    [self setupScrollView:scrollview];
    
   
}
- (void)setupScrollView:(UIScrollView*)scrMain {
    // we have 10 images here.
    // we will add all images into a scrollView &amp; set the appropriate size.
    imagesArray = [NSArray arrayWithObjects: @"img1.jpeg", @"img2.jpeg", @"img3.jpeg",@"img1.jpeg", @"img2.jpeg", @"img3.jpeg", nil];
    for (int i=0; i<imagesArray.count; i++) {
        // create image
        UIImage *image = [UIImage imageNamed:imagesArray[i]];
        // create imageView
        UIImageView *imgV = [[UIImageView alloc] initWithFrame:CGRectMake((i-1)*scrMain.frame.size.width, 0, scrMain.frame.size.width, scrMain.frame.size.height)];
        // set scale to fill
        imgV.contentMode=UIViewContentModeScaleToFill;
        // set image
        [imgV setImage:image];
        // apply tag to access in future
        imgV.tag=i+1;
        // add to scrollView
        [scrMain addSubview:imgV];
    }
    // set the content size to 10 image width
    [scrMain setContentSize:CGSizeMake(scrMain.frame.size.width*10, scrMain.frame.size.height)];
    // enable timer after each 2 seconds for scrolling.
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(scrollingTimer) userInfo:nil repeats:YES];
}
- (void)scrollingTimer {
    // access the scroll view with the tag
    UIScrollView *scrMain = (UIScrollView*) [self.view viewWithTag:1];
    // same way, access pagecontroll access
    UIPageControl *pgCtr = (UIPageControl*) [self.view viewWithTag:12];
    // get the current offset ( which page is being displayed )
    CGFloat contentOffset = scrMain.contentOffset.x;
    // calculate next page to display
    int nextPage = (int)(contentOffset/scrMain.frame.size.width) + 1 ;
    // if page is not 10, display it
    if( nextPage!= imagesArray.count-1)  {
        [scrMain scrollRectToVisible:CGRectMake(nextPage*scrMain.frame.size.width, 0, scrMain.frame.size.width, scrMain.frame.size.height) animated:YES];
        pgCtr.currentPage=nextPage;
        // else start sliding form 1 :)
    } else {
        [scrMain scrollRectToVisible:CGRectMake(0, 0, scrMain.frame.size.width, scrMain.frame.size.height) animated:YES];
        pgCtr.currentPage=0;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)BtnPitchInfo:(id)sender {
   
    VauneListViewController *infoVc=[self.storyboard instantiateViewControllerWithIdentifier:@"VauneListViewController"];
    [self.navigationController pushViewController:infoVc animated:YES];

}

- (IBAction)BtnBooking:(id)sender {
    SelectTimeViewController *infoVc=[self.storyboard instantiateViewControllerWithIdentifier:@"SelectTimeViewController"];
    [self.navigationController pushViewController:infoVc animated:YES];
}

- (IBAction)BtnMyBooking:(id)sender {
    MyBookingViewController *infoVc=[self.storyboard instantiateViewControllerWithIdentifier:@"MyBookingViewController"];
    [self.navigationController pushViewController:infoVc animated:YES];
}

- (IBAction)BtnAccount:(id)sender {
    AccountViewController*infoVc=[self.storyboard instantiateViewControllerWithIdentifier:@"AccountViewController"];
    [self.navigationController pushViewController:infoVc animated:YES];
}
@end
