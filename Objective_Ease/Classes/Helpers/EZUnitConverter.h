//
//  EZUnitConverter.h
//  Objective_Ease
//
//  Created by michael on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
// MATH LESSON: 1inch = 2.54cm
  //  numCent / 30.48 = feet

#define kCentToFeetRatio 30.48;
#define kInchToCentRatio 2.54;

@interface EZUnitConverter : NSObject {
    
}


- (double) convertFeetToInches :(double)feet;
- (double) convertInchesToFeet :(double)inches;
- (double) convertCentToFeet :(double)cent;
- (double) convertFeetToCent :(double)feet;
- (double) convertCentToInches :(double)cent;
- (double) convertInchesToCent :(double)inches;





@end
