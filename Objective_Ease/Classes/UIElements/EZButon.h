//
//  EZButon.h
//  Objective_Ease
//
//  Created by Michael Dominick on 4/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface EZButon : UIButton {
    
    CGSize buttonSize;
    UIColor *buttonColor;
    NSString *buttonString;
    
}

@property (nonatomic, retain) NSString *buttonText;
@property (nonatomic, retain) UIColor *buttonColor;
@property (nonatomic, assign) CGSize buttonSize;

- (void) addBackButton;
- (void) addRightNavigationBarButton;
- (void) addLeftNavigationBarButton;
- (void) setColor:(UIColor *)color;
- (void) setColorFromHexString:(NSString *)hexString;
- (void) setButtonImage:(UIImage *)image;
- (void) setButtonSize:(CGSize)size;




@end
