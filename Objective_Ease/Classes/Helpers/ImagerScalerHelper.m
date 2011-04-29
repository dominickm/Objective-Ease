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

- (UIImage *) imageCroppedToRect: (CGRect) rect {
    UIGraphicsBeginImageContext(CGSizeMake(rect.size.width, rect.size.height));
    [self drawInRect:CGRectMake(-rect.origin.x, -rect.origin.y, self.size.width, self.size.height)];
    UIImage *resultingImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultingImage;
}

- (UIImage *) imageScaledAndCroppedToMaxSize: (CGSize) maxSize {
    float horizontalFactor = self.size.width / maxSize.width;
    float verticalFactor = self.size.height / maxSize.height;
    float conversionFactor = MIN(horizontalFactor, verticalFactor);
    
    float newWidth = self.size.width / conversionFactor;
    float newHeight = self.size.height / conversionFactor;
    
    float offsetLeft = (maxSize.width - newWidth) / 2;
    float offsetUpper = (maxSize.height - newHeight) / 2;
    
    UIGraphicsBeginImageContext(maxSize);
    [self drawInRect: CGRectMake(offsetLeft, offsetUpper , newWidth , newHeight)];
    UIImage *resultingImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultingImage;
}

@end
