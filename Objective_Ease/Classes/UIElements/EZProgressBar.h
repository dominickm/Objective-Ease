//
//  EZProgressBar.h
//  Objective_Ease
//
//  Created by Michael Dominick on 10/29/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//



@interface EZProgressBar : UIView

@property (readwrite) float minValue;
@property (readwrite) float maxValue;
@property (readwrite) float currentValue;
@property (nonatomic, retain) UIColor* color;

- (void) setInRect:(CGRect)someRect;

@end
