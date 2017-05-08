//
//  SelectTimeViewController.m
//  BookPi
//
//  Created by Arjun on 4/21/17.
//  Copyright © 2017 BookPi. All rights reserved.
//

#import "SelectTimeViewController.h"

@interface SelectTimeViewController ()
{
    NSArray *bookingTimeArr;
}
@end

@implementation SelectTimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   // selecttimeCollectionView.frame=CGRectMake(selecttimeCollectionView.frame.origin.x, selecttimeCollectionView.frame.origin.y, selecttimeCollectionView.frame.size.width, 48*6+10*5);
    pickerArray=[NSArray arrayWithObjects:@"Pitch1",@"Pitch2", nil];
    bookingTimeArr=[NSArray arrayWithObjects:@"10:00 AM-11:00 AM",@"11:00 AM-12:00 PM",@"12:00 PM-01:00 PM",@"01:00 PM-02:00 PM",@"02:00 PM-03:00 PM",@"03:00 PM-04:00 PM",@"04:00 PM-05:00 PM",@"05:00 PM-06:00 PM",@"06:00 PM-07:00 PM",@"07:00 PM-08:00 PM", nil];
     [self addPickerView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return bookingTimeArr.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
   
    TimeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TCell" forIndexPath:indexPath];
    
    cell.lblTime.text=bookingTimeArr[indexPath.row];
    if(indexPath.item%2==0)
    {
        cell.imgBG.layer.borderWidth=1.0f;
        cell.imgBG.layer.borderColor=[UIColor redColor].CGColor;
        cell.imgBG.layer.cornerRadius=10;
        cell.lblTime.textColor=[UIColor redColor];
    }
   
    else
    {  cell.imgBG.layer.borderWidth=1.0f;
          cell.lblTime.textColor=[UIColor greenColor];
        cell.imgBG.layer.cornerRadius=10;
         cell.imgBG.layer.borderColor=[UIColor greenColor].CGColor;
    }
   
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(collectionView.frame.size.width/2.1,50);
}
-(void)addPickerView{
    myTextField.delegate = self;
    [self.view addSubview:myTextField];
    [myTextField setPlaceholder:@"Pick a Pitch"];
    myPickerView = [[UIPickerView alloc]init];
    myPickerView.dataSource = self;
    myPickerView.delegate = self;
    myPickerView.showsSelectionIndicator = YES;
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Done" style:UIBarButtonItemStyleDone
                                   target:self action:@selector(done:)];
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:
                          CGRectMake(0, self.view.frame.size.height-
                                     myTextField.frame.size.height-50, 320, 50)];
    [toolBar setBarStyle:UIBarStyleBlackOpaque];
    NSArray *toolbarItems = [NSArray arrayWithObjects:
                             doneButton, nil];
    [toolBar setItems:toolbarItems];
    myTextField.inputView = myPickerView;
    myTextField.inputAccessoryView = toolBar;
    
}
#pragma mark - Text field delegates

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    if ([textField.text isEqualToString:@""]) {
        
    }
}
#pragma mark - Picker View Data source
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return [pickerArray count];
}

#pragma mark- Picker View Delegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:
(NSInteger)row inComponent:(NSInteger)component{
    [myTextField setText:[pickerArray objectAtIndex:row]];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:
(NSInteger)row forComponent:(NSInteger)component{
    return [pickerArray objectAtIndex:row];
}
- (IBAction)BtnConfirmDetails:(id)sender {
    ConfrimDetailsViewController *cvc=[self.storyboard instantiateViewControllerWithIdentifier:@"ConfrimDetailsViewController"    ];
    [self.navigationController pushViewController:cvc animated:YES];
    
}

- (IBAction)BtnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)done:(id)sender{

    [self.view endEditing:YES];
    
}
@end
