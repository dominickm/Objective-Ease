//
//  EZButon.h
//  Objective_Ease
//
//  Created by Michael Dominick on 4/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>


@interface EZButon : UIButton {
    
    CGSize buttonSize;
    UIColor *buttonColor;
    NSString *buttonString;
    
}

@property (nonatomic) NSString *buttonText;
@property (nonatomic) UIColor *buttonColor;
@property (nonatomic, assign) CGSize buttonSize;
@property (nonatomic, assign) BOOL shiny;
@property (nonatomic, assign) BOOL shadow;

- (void) setColorFromHexString:(NSString *)hexString;
- (void) setShadow:(BOOL)shouldShadow;



@end
