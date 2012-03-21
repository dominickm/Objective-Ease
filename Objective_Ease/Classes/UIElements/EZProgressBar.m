//
//  EZProgressBar.m
//  Objective_Ease
//
//  Created by Michael Dominick on 10/29/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "EZProgressBar.h"

@implementation EZProgressBar
@synthesize maxValue, minValue, currentValue, color;



#pragma mark inits

- (id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.minValue = 0;
        self.maxValue = 0;
        self.currentValue = 0;
        self.backgroundColor = [UIColor clearColor];
        // more properties need to be set here.... depending on spec
    }
    return self;
}

#pragma mark drawRect

- (void) drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 5);
    CGContextSetStrokeColor(context, [self.color CGColor]); // need to allow custom colors
    
}

@end
