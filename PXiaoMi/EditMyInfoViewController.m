//
//  EditMyInfoViewController.m
//  PXiaoMi
//
//  Created by dmtec on 16/8/5.
//  Copyright © 2016年 dmtec. All rights reserved.
//

#import "EditMyInfoViewController.h"
#import "NSDate+Helper.h"
#import "AFNetworking.h"
#import "MBProgressHUD+MJ.h"

@interface EditMyInfoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iv_portrait;

@property (weak, nonatomic) IBOutlet UITextField *tf_userName;
@property (weak, nonatomic) IBOutlet UILabel *ll_birthday;

@property (weak, nonatomic) IBOutlet UITextField *tf_emal;

@end

@implementation EditMyInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        // today date
    NSDate *currentDate = [NSDate date];    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd"];
    NSString *dateString = [dateFormatter stringFromDate:currentDate];
    _ll_birthday.text = dateString;

    // Do any additional setup after loading the view.
}



- (IBAction)clickChooseBirthday:(id)sender {
    UIDatePicker *picker = [[UIDatePicker alloc]init];
    picker.datePickerMode = UIDatePickerModeDate;
    
    picker.frame = CGRectMake(0, 40, 320, 200);
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"\n\n\n\n\n\n\n\n\n\n\n" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        NSDate *date = picker.date;
        
        _ll_birthday.text = [date stringWithFormat:@"yyyy-MM-dd"];
        
    }];
    [alertController.view addSubview:picker];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (IBAction)btnConfirm:(id)sender {
}

- (IBAction)btnOK:(id)sender {
    [self btnConfirm:sender];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
