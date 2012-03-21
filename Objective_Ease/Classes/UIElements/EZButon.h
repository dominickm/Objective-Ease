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

@property (nonatomic) NSString* buttonText;
@property (nonatomic, assign) CGSize buttonSize;
@property (nonatomic, assign) BOOL shiny;
@property (nonatomic, assign) BOOL shadow;
@property (nonatomic) CAGradientLayer* normalGradient;
@property (nonatomic) CAGradientLayer* highlightedGradient;
@property (nonatomic) CAGradientLayer* disabledGradient;
@property (nonatomic) CAGradientLayer* selectedGradient;

- (void) setColorFromHexString:(NSString *)hexString;
- (void) setShadow:(BOOL)shouldShadow;
- (void) setCornerRadius:(CGFloat)radius;
- (void) setShiny:(BOOL)isShiny;
- (void) configure;

@end
