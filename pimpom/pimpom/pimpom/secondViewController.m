//
//  secondViewController.m
//  pimpom
//
//  Created by neywen on 12/06/13.
//  Copyright (c) 2013 test loic j. All rights reserved.
//

#import "secondViewController.h"

@interface SecondViewController ()

@property NSMutableArray* tableau1;


@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.tableau1 = [[NSMutableArray alloc] init];
    [self.tableau1 addObject:@"test tab"];
    [self.tableau1 addObject:@"test tab2"];
    [self.tableau1 addObject:@"test tab3"];
    
    NSLog(@"%@", self.tableau1);
    
    NSString* case1 = [self.tableau1 objectAtIndex:0];
    NSLog(@"%@", case1);
    
    for (NSString* str in self.tableau1)
    {
        NSLog(@"%@", str);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
