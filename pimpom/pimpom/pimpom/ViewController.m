//
//  ViewController.m
//  pimpom
//
//  Created by neywen on 07/06/13.
//  Copyright (c) 2013 test loic j. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@property IBOutlet UILabel* testLabel1;
@property IBOutlet UIButton* button1;


@end

@implementation ViewController


- (id)init {
    
    if (self = [super init]) {
        
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSLog(@"chaine de caractere??");
    NSLog(self.testLabel1.text);    
}


- (void)viewDidAppear:(BOOL)animated {
    
    NSLog(@"viewDidAppear");
    self.button1.enabled = YES;

}

- (void)viewWillDisappear:(BOOL)animated {
    
    NSLog(@"viewWillDisappear");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onButtonClick:(id)sender {
    
    self.button1.enabled = NO;
    
    self.testLabel1.text = @"mise a jour texte label1";
    
    
    CGRect frame = self.testLabel1.frame;
    

    [UIView animateWithDuration:0.5 animations:^{
        
        self.testLabel1.frame = CGRectMake(frame.origin.x, frame.origin.y + 100, frame.size.width, frame.size.height);
        
    } completion:^(BOOL finished) {

        SecondViewController* viewc = [[SecondViewController alloc] initWithNibName:@"secondViewController" bundle:nil];

        [self.navigationController pushViewController:viewc animated:YES];
        
    }];
    
    
    NSLog(@"meuh");

//    UIButton* btn = sender;
//    btn.enabled = NO;
    
}






@end
