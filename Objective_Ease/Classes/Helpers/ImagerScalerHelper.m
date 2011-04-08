//
//  ImagerScalerHelper.m
//  Objective_Ease
//
//  Created by Michael Dominick on 4/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//


@implementation  UIImage (scaler);

- (UIImage *)scaleToSize:(UIImage *)originalImage MaxWidth:(float)maxWidth MaxHeight:(float)maxHeight {
    float originalWidth = originalImage.size.width;
    float originalHeight = originalImage.size.height;
    float newWidth = 0;
    float newHeight = 0;
   
    if (originalWidth < originalHeight) {
        float conversionRatio = maxHeight / originalHeight;
        newWidth = originalWidth * conversionRatio;
        newHeight = maxHeight;
    } else {
        float conversionRatio = maxWidth / originalWidth;
        newHeight = originalHeight * conversionRatio;
        newWidth = maxWidth;
    }
    newWidth = floorf(newWidth);
    newHeight = floorf(newHeight);
    
    UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
    [self drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
    UIImage *resultingImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultingImage;
    
}

@end
