//
//  ViewController.m
//  FramedArrangement
//
//  Created by Sarah on 4/20/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
    
    [self layoutSquares];
    [self layoutHorizontalRectangles];
    [self layoutVerticalRectangles];
    [self layoutDiagonalSquares];
    
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

- (void)layoutSquares
{
    float squareWidth = CGRectGetWidth(self.view.bounds) /2.0;
    float squareHeight = CGRectGetHeight(self.view.bounds) /2.0;
    
    float squareColumn2_x = squareWidth;
    float squareRow2_y = squareHeight;
    
    self.redView.frame = CGRectMake(0.0, 0.0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareColumn2_x, 0.0, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(0.0, squareRow2_y, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareColumn2_x, squareRow2_y, squareWidth, squareHeight);
    
}

- (void)layoutHorizontalRectangles

{
    CGFloat squareWidth = CGRectGetWidth(self.view.bounds);
    CGFloat squareHeight = CGRectGetHeight(self.view.bounds) /4.0;
    
    
    self.redView.frame = CGRectMake(0.0, 0.0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(0.0, squareHeight*1.0, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(0.0, squareHeight*2.0, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(0.0, squareHeight*3.0, squareWidth, squareHeight);
}

- (void)layoutVerticalRectangles

{
    float squareWidth = CGRectGetWidth(self.view.bounds) /4.0;
    float squareHeight = CGRectGetHeight(self.view.bounds);
    
    
    self.redView.frame = CGRectMake(0.0, 0.0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth*1.0, 0.0, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(squareWidth*2.0, 0.0, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth*3.0, 0.0, squareWidth, squareHeight);
}

- (void) layoutDiagonalSquares

{
    
    float squareWidth = CGRectGetWidth(self.view.bounds) /4.0;
    float squareHeight = CGRectGetHeight(self.view.bounds) /4.0;
    
    self.redView.frame = CGRectMake(0.0, 0.0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth, squareHeight, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(squareWidth*2.0, squareHeight*2.0, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth*3.0, squareHeight*3.0, squareWidth, squareHeight);
    
}




@end
