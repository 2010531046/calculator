//
//  ViewController.h
//  calculator
//
//  Created by 野坂　卓弥 on 13/11/14.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController;
    

- (IBAction)InputNumber:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *OutputLabel;

- (IBAction)ACButton:(id)sender;

- (IBAction)AddButton:(id)sender;

- (IBAction)EqualButton:(id)sender;

- (IBAction)SubButton:(id)sender;


- (IBAction)MulButton:(id)sender;


- (IBAction)DivButton:(id)sender;


- (IBAction)SignButton:(id)sender;

- (void)arithmeticOperator:(int)number;

- (void)calculate;

@end
