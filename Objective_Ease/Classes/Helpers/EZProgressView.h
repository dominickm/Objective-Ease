//
//  EZProgressView.h
//  RedRover
//
//  Created by Michael Dominick on 4/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface EZProgressView : UIProgressView {
    
    UIColor *tintColor;
    NSTimer *progressTimer;
    CGFloat targetProgress;
    
}

- (void) setTintColor:(UIColor *)color;
- (void) setProgress:(CGFloat)progress animated:(BOOL)animated;

@end
