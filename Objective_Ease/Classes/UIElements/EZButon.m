//
//  EZButon.m
//  Objective_Ease
//
//  Created by Michael Dominick on 4/29/11.
//  Copyright 2011 Fingertip Tech, INC. All rights reserved.
//

#import "EZButon.h"


@implementation EZButon

@synthesize buttonSize, buttonText, buttonType, shiny, shadow, normalGradient, highlightedGradient, disabledGradient, selectedGradient;


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

- (void) setShiny:(BOOL)isShiny {
    self.shiny = isShiny;
}

- (void) configure {
    if (normalGradient) {
        [normalGradient removeFromSuperlayer];
    } else if (highlightedGradient) {
        [highlightedGradient removeFromSuperlayer];
    } else if (disabledGradient) {
        [disabledGradient removeFromSuperlayer];
    } else if (selectedGradient) {
        [selectedGradient removeFromSuperlayer];
    }
    [self.layer setBorderWidth:1.0f];
    [self.layer setBorderColor:[UIColor colorWithRed:168.0f/255.0f green:171.0f/255.0f blue:173.0f/255.0f alpha:1.0f].CGColor];
    [self.layer setCornerRadius:8.0f];
    [self.layer setMasksToBounds:NO];
    // [self configureGradients];
    if (!self.enabled) {
        [self.layer addSublayer:disabledGradient];
    } else if (self.selected) {
        [self.layer addSublayer:selectedGradient];
    } else {
        [self.layer addSublayer:normalGradient];
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
