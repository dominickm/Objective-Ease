//
//  EZButon.h
//  Objective_Ease
//
//  Created by Michael Dominick on 4/29/11.
//  Copyright 2011 Fingertip Tech, INC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>


@interface EZButon : UIButton {
    
    CGSize buttonSize;
    NSString *buttonString;
    
}

@property (nonatomic, retain) NSString* buttonText;
@property (nonatomic, assign) CGSize buttonSize;
@property (nonatomic, assign) BOOL shiny;
@property (nonatomic, assign) BOOL shadow;
@property (nonatomic, retain) CAGradientLayer* normalGradient;
@property (nonatomic, retain) CAGradientLayer* highlightedGradient;
@property (nonatomic, retain) CAGradientLayer* disabledGradient;
@property (nonatomic, retain) CAGradientLayer* selectedGradient;

- (void) setColorFromHexString:(NSString *)hexString;
- (void) setShadow:(BOOL)shouldShadow;
- (void) setCornerRadius:(CGFloat)radius;
- (void) setShiny:(BOOL)isShiny;
- (void) configure;

@end
