//
//  ViewController.m
//  TipCalculator
//
//  Created by Jeff Eom on 2016-07-08.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercent;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tipAmountLabel.text = @"Total Amount: ";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateTip:(id)sender {
    float value = [self.billAmountTextField.text intValue];
    float tipAmount = [self.tipPercent.text intValue];
    tipAmount = tipAmount / 100;
    value = value * ( 1 + tipAmount);
    
    self.billAmountTextField.text = @"";
    self.tipPercent.text = @"";

    self.tipAmountLabel.text = [NSString stringWithFormat:@"Total Amount: $%.02f", value];
}

- (IBAction)rootViewTapped:(id)sender {
    [self.view endEditing:YES];
}


@end
