//
//  EZButon.m
//  Objective_Ease
//
//  Created by Michael Dominick on 4/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EZButon.h"


@implementation EZButon

@synthesize buttonSize, buttonText, buttonType, shiny, shadow, normalGradient, highlightedGradient, disabledGradient, selectedGradient;

- (void) dealloc {
    [buttonText release];
    [normalGradient release];
    [highlightedGradient release];
    [disabledGradient release];
    [selectedGradient release];
    [super dealloc];
}

- (void) setButtonColor:(UIColor *)color {
    self.buttonColor = color;
}

- (void) setColor:(UIColor *)color {
    self.buttonColor = color;
}

- (void) setColorFromHexString:(NSString *)hexString {
    
    // gonna need a hex to UIColor helper for this
}

- (void) setShadow:(BOOL)shouldShadow {
    if (shouldShadow) {
        [self.layer setShadowColor:[[UIColor blackColor] CGColor]];
        [self.layer setShadowOffset:CGSizeMake(0.0f, 2.0f)];
        [self.layer setShadowOpacity:0.5f];
        [self.layer setShadowRadius:2.0f]; 
    } else {
        [self.layer setShadowOpacity:0.0f];
    }
}

- (BOOL) shadow {
    if ([self.layer shadowOpacity] > 0.01f) {
        return YES;
    } else {
        return NO;
    }
}

- (void) setCornerRadius:(CGFloat)radius {
    [self.layer setCornerRadius:radius];
    if (normalGradient) {
        [normalGradient setCornerRadius:radius];
    } else if (highlightedGradient) {
        [highlightedGradient setCornerRadius:radius];
    } else if (disabledGradient) {
        [disabledGradient setCornerRadius:radius];
    } else if (selectedGradient) {
        [selectedGradient setCornerRadius:radius];
    }
}


@end
