//
//  ImagerScalerHelper.h
//  Objective_Ease
//
//  Created by Michael Dominick on 4/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIImage (scaler) 

- (UIImage *) croppedToRect:(CGRect)rect;
- (UIImage *) scaleToSize:(UIImage *)originalImage MaxWidth:(float)maxWidth MaxHeight:(float)maxHeight;
- (UIImage *) imageScaledAndCroppedToMaxSize: (CGSize) maxSize;


@end
