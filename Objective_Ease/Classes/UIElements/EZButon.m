//
//  EZButon.m
//  Objective_Ease
//
//  Created by Michael Dominick on 4/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EZButon.h"


@implementation EZButon

@synthesize buttonColor, buttonSize, buttonText, buttonType;


- (void) setButtonColor:(UIColor *)color {
    self.buttonColor = color;
}

- (void) setButtonText:(NSString *)text {
    self.buttonText = text;
}

- (void) setColor:(UIColor *)color {
    self.buttonColor = color;
}

- (void) setColorFromHexString:(NSString *)hexString {
    
    // gonna need a hex to UIColor helper for this
}

- (void) setButtonSize:(CGSize)size {
    self.buttonSize = size;
}

- (void) setButtonImage:(UIImage *)image {
    
}

- (void) addBackButton {
    
}

- (void) addRightNavigationBarButton {
    
}

- (void) addLeftNavigationBarButton {
    
}

@end
