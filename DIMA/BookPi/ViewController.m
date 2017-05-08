//
//  ViewController.m
//  BookPi
//
//  Created by Arjun on 4/20/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import "ViewController.h"
#import "IntroCollectionViewCell.h"
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
{
    NSArray *imagesArr;
    NSInteger currentIndex;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSTimer scheduledTimerWithTimeInterval:2.0
                                     target:self
                                   selector:@selector(targetMethod)
                                   userInfo:nil
                                    repeats:YES];
    imagesArr=[NSArray arrayWithObjects:@"bg_1.png",@"bg_2.png",@"bg_3.png",@"bg_4.png",@"bg_5.png", nil];
    pagecontrol.numberOfPages=imagesArr.count;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return imagesArr.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
     pagecontrol.numberOfPages=indexPath.item;
     IntroCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    //cell.imageView.image=[UIImage imageNamed:imagesArr[indexPath.item]];
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(collectionView.frame.size.width, collectionView.frame.size.height);
}
- (IBAction)BtnSignIn:(id)sender {
    LoginViewController *lVC=[self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    [self.navigationController pushViewController:lVC animated:YES];
}

- (IBAction)BtnSignUp:(id)sender
{
    SignUpViewController *lVC=[self.storyboard instantiateViewControllerWithIdentifier:@"SignUpViewController"];
    [self.navigationController pushViewController:lVC animated:YES];
}
-(void)targetMethod
{
    NSIndexPath *indexpath;
    if(currentIndex<imagesArr.count-1)
    {
        currentIndex++;
        indexpath=[NSIndexPath indexPathForItem:currentIndex inSection:0];
    }
    else
    {
        currentIndex=0;
        indexpath=[NSIndexPath indexPathForItem:currentIndex inSection:0];
    }
    
    

    [collectionView scrollToItemAtIndexPath:indexpath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:NO];
}
@end
