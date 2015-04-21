//
//  ViewController.h
//  FramedArrangement
//
//  Created by Sarah on 4/20/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property UIView *redView;
@property UIView *greenView;
@property UIView *blueView;
@property UIView *yellowView;

- (void)layoutSquares;
- (void)layoutHorizontalRectangles;
- (void)layoutVerticalRectangles;
- (void)layoutDiagonalSquares;




@end
