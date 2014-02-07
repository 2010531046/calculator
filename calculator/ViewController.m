//
//  ViewController.m
//  calculator
//
//  Created by 野坂　卓弥 on 13/11/14.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    double x;
    double y;
    int fork;
    int pulsminus;

}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)InputNumber:(id)sender {
    UIButton *Number = sender;

    switch (pulsminus) {
        case 0:
            
            x = x*10 + Number.tag;
            self.OutputLabel.text = [[NSString alloc] initWithFormat:@"%.f", x];
            
            break;
     
            
        case 1:
            
            x = x*10 - Number.tag;
            self.OutputLabel.text = [[NSString alloc] initWithFormat:@"%.f", x];
            
            break;
     
            
        default:
            break;
    }
    
}


- (IBAction)ACButton:(id)sender {
    
    x = 0;
    y = 0;
    fork = 0;
    pulsminus = 0;
     self.OutputLabel.text = [[NSString alloc] initWithFormat:@"%.f", x];    
}

- (IBAction)EqualButton:(id)sender {
    [self calculate];
   }

- (void)calculate{
    switch (fork) {
            
        case 1:
            
            x = y + x;
            self.OutputLabel.text = [[NSString alloc] initWithFormat:@"%.f", x];
            
            break;
            
            
        case 2:
            
            x = y - x;
            self.OutputLabel.text = [[NSString alloc] initWithFormat:@"%.f", x];
            
            break;
            
            
        case 3:
            
            x = y * x;
            self.OutputLabel.text = [[NSString alloc] initWithFormat:@"%.f", x];
            
            break;
            
            
        case 4:
            
            x = y / x;
            self.OutputLabel.text = [[NSString alloc] initWithFormat:@"%g", x];
            
            
        default:
            break;
    }

}


- (void)arithmeticOperator:(int)number{
 
    if (fork != 0) {
    [self calculate];
    }
 
    y = x;
    x = 0;
    pulsminus = 0;
    fork = number;

}

- (IBAction)AddButton:(id)sender {
    [self arithmeticOperator:1];
}


- (IBAction)SubButton:(id)sender {
    [self arithmeticOperator:2];
}

- (IBAction)MulButton:(id)sender {
    [self arithmeticOperator:3];
}

- (IBAction)DivButton:(id)sender {
    [self arithmeticOperator:4];
}

- (IBAction)SignButton:(id)sender {
    x = -x;
    self.OutputLabel.text = [[NSString alloc] initWithFormat:@"%.f", x];
    pulsminus = 1;
}
@end
