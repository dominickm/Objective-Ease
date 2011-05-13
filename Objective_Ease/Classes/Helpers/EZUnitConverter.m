//
//  EZUnitConverter.m
//  Objective_Ease
//
//  Created by michael on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EZUnitConverter.h"


@implementation EZUnitConverter

- (double) convertFeetToInches:(double)feet {
    double convertedValue = feet * 12;
    return convertedValue;
}

- (double) convertInchesToFeet:(double)inches {
    double convertedValue = inches / 12;
    return convertedValue;
}

- (double) convertCentToFeet:(double)cent {
    double convertedValue = cent / kCentToFeetRatio;
    return convertedValue;
}

- (double) convertFeetToCent:(double)feet {
    double convertedValue = feet * kCentToFeetRatio;
    return convertedValue;
}

- (double) convertCentToInches:(double)cent {
    double convertedValue = cent / kInchToCentRatio;
    return convertedValue;
}

- (double) convertInchesToCent:(double)inches {
    double convertedValue = inches * kInchToCentRatio;
    return convertedValue;
}
@end
