//
//  ViewController.m
//  01computer
//
//  Created by 曹泽 on 16/3/9.
//  Copyright © 2016年 曹泽. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)computer;
@property (weak, nonatomic) IBOutlet UITextField *txtNum1;
@property (weak, nonatomic) IBOutlet UITextField *txtNum2;
@property (weak, nonatomic) IBOutlet UITextField *lblresult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)computer {
    NSString *num1=self.txtNum1.text;
    NSString *num2=self.txtNum2.text;
    int n1=[num1 intValue];
    int n2=num2.intValue;
    
    int result=n1+n2;
   // int result1=n1-n2;
    
    self.lblresult.text=[NSString stringWithFormat:@"%d",result];
    //self.lblresult.text=[NSString stringWithFormat:@"%d",result1];
    [self.txtNum2 resignFirstResponder];
    [self.txtNum1 resignFirstResponder];
    [self.view endEditing:YES];
    
    
}
@end
