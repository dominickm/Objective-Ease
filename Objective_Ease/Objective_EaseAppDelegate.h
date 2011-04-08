//
//  Objective_EaseAppDelegate.h
//  Objective_Ease
//
//  Created by Michael Dominick on 4/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Objective_EaseViewController;

@interface Objective_EaseAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Objective_EaseViewController *viewController;

@end
