//
//  ViewController.m
//  TYDotIndicatorView
//
//  Created by Tu You on 14-1-12.
//  Copyright (c) 2014年 Tu You. All rights reserved.
//

#import "ViewController.h"
#import "TYDotIndicatorView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    TYDotIndicatorView *squareDot = [[TYDotIndicatorView alloc] initWithFrame:CGRectMake(30, 50, 260, 50) dotStyle:TYDotIndicatorViewStyleSquare dotColor:[UIColor greenColor] dotSize:CGSizeMake(14, 14)];
    squareDot.backgroundColor = [UIColor colorWithRed:0.83f green:0.89f blue:1.00f alpha:1.00f];;
    squareDot.layer.cornerRadius = 5.0f;
    [squareDot startAnimating];
    [self.view addSubview:squareDot];
    
    TYDotIndicatorView *roundedRectDot = [[TYDotIndicatorView alloc] initWithFrame:CGRectMake(30, 130, 260, 50) dotStyle:TYDotIndicatorViewStyleRound dotColor:[UIColor redColor] dotSize:CGSizeMake(15, 15)];
    roundedRectDot.backgroundColor = [UIColor colorWithRed:0.98f green:0.97f blue:0.55f alpha:1.00f];
    roundedRectDot.layer.cornerRadius = 5.0f;
    [roundedRectDot startAnimating];
    [self.view addSubview:roundedRectDot];
    
    TYDotIndicatorView *circleDot = [[TYDotIndicatorView alloc] initWithFrame:CGRectMake(30, 210, 260, 50) dotStyle:TYDotIndicatorViewStyleCircle dotColor:[UIColor blueColor] dotSize:CGSizeMake(16, 16)];
    circleDot.backgroundColor = [UIColor colorWithRed:0.95f green:0.79f blue:1.00f alpha:1.00f];
    circleDot.layer.cornerRadius = 5.0f;
    [circleDot startAnimating];
    [self.view addSubview:circleDot];
    
    TYDotIndicatorView *darkRoundedRectDot = [[TYDotIndicatorView alloc] initWithFrame:CGRectMake(30, 290, 260, 50) dotStyle:TYDotIndicatorViewStyleRound dotColor:[UIColor colorWithRed:0.85f green:0.86f blue:0.88f alpha:1.00f] dotSize:CGSizeMake(15, 15)];
    darkRoundedRectDot.backgroundColor = [UIColor colorWithRed:0.20f green:0.27f blue:0.36f alpha:1.00f];
    darkRoundedRectDot.layer.cornerRadius = 5.0f;
    [darkRoundedRectDot startAnimating];
    [self.view addSubview:darkRoundedRectDot];
    
    TYDotIndicatorView *darkCircleDot = [[TYDotIndicatorView alloc] initWithFrame:CGRectMake(30, 370, 260, 50) dotStyle:TYDotIndicatorViewStyleCircle dotColor:[UIColor colorWithWhite:0.8 alpha:1.0] dotSize:CGSizeMake(15, 15)];
    darkCircleDot.backgroundColor = [UIColor colorWithRed:0.22 green:0.22 blue:0.22 alpha:1.0];
    [darkCircleDot startAnimating];
    darkCircleDot.layer.cornerRadius = 5.0f;
    [self.view addSubview:darkCircleDot];
    
    UILabel *dotLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 510, 320, 22)];
    dotLabel.backgroundColor = [UIColor clearColor];
    dotLabel.textAlignment = NSTextAlignmentCenter;
    dotLabel.font = [UIFont fontWithName:@"MarkerFelt-Wide" size:18];
    dotLabel.textColor = [UIColor orangeColor];
    dotLabel.text = @"TYDotIndicatorView";
    [self.view addSubview:dotLabel];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
