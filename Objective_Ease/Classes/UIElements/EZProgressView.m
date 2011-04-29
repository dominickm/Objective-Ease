//
//  EZProgressView.m
//  RedRover
//
//  Created by Michael Dominick on 4/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#import "drawing.m"

#import "EZProgressView.h"
@implementation EZProgressView

- (void) dealloc {
    [super dealloc];
    [tintColor release];
}

- (id) initWithCoder: (NSCoder*)aDecoder
{
	if(self=[super initWithCoder: aDecoder])
	{
		[self setTintColor: [UIColor colorWithRed: 43.0/255.0 green: 134.0/255.0 blue: 225.0/255.0 alpha: 1]];
	}
	return self;
}

- (id) initWithProgressViewStyle: (UIProgressViewStyle) style
{
	if(self=[super initWithProgressViewStyle: style])
	{
		[self setTintColor: [UIColor colorWithRed: 43.0/255.0 green: 134.0/255.0 blue: 225.0/255.0 alpha: 1]];
	}
	
	return self;
}

- (void)drawRect:(CGRect)rect {
    if ([self progressViewStyle] == UIProgressViewStyleDefault) {
        CGContextRef ctx = UIGraphicsGetCurrentContext();
		
		addRoundedRectToPath(ctx, rect, 4, 4);
		CGContextClip(ctx);
		
		CGContextSetRGBFillColor(ctx, 1, 1, 1, 1);
		CGContextFillRect(ctx, rect);
		
		CGContextSetRGBStrokeColor(ctx, 178.0/255.0, 178.0/255.0, 178.0/255.0, 0.9);
		CGContextSetLineWidth(ctx, 2);
		CGContextMoveToPoint(ctx, 2.2, rect.size.height);
		CGContextAddLineToPoint(ctx, rect.size.width - 2.2, rect.size.height);
		CGContextStrokePath(ctx);
		
		CGRect upperhalf = rect;
		upperhalf.size.height /= 1.75;
		upperhalf.origin.y = 0;
		
		CGContextSetRGBFillColor(ctx, 202.0/255.0, 202.0/255.0, 202.0/255.0, 0.9);
		CGContextFillRect(ctx, upperhalf);
		
		CGRect upperhalfTop = upperhalf;
		upperhalfTop.size.height /= 2.7;
		CGContextSetRGBFillColor(ctx, 163.0/255.0, 163.0/255.0, 163.0/255.0, 0.8);
		CGContextFillRect(ctx, upperhalfTop);
		
		
		CGRect progressRect = rect;
		progressRect.size.width *= [self progress];
		
		addRoundedRectToPath(ctx, progressRect, 4, 4);
		CGContextClip(ctx);
		
		CGContextSetFillColorWithColor(ctx, [tintColor CGColor]);
		CGContextFillRect(ctx, progressRect);
		
		progressRect.size.width -= 1.25;
		progressRect.origin.x += 0.625;
		progressRect.size.height -= 1.25;
		progressRect.origin.y += 0.625;
		
		addRoundedRectToPath(ctx, progressRect, 4, 4);
		CGContextClip(ctx);
		CGContextSetLineWidth(ctx, 1);
		CGContextSetRGBStrokeColor(ctx, 20.0/255.0, 20.0/255.0, 20.0/255.0, 0.6);
		CGContextStrokeRect(ctx, progressRect);
		
		CGFloat colors[8] = {
			1, 1, 1, 0.45,
			1, 1, 1, 0.75
		};
		
		fillRectWithLinearGradient(ctx, upperhalf, colors, 2, nil);
	}
	else {
		[super drawRect: rect];
	}

}

- (void) setTintColor:(UIColor *)color {
    [tintColor release];
    tintColor = [color retain];
}

- (void) moveProgress {
    if (self.progress < targetProgress) {
        self.progress = MIN(self.progress + 0.01, targetProgress);
    } else if (self.progress > targetProgress) {
        self.progress = MAX(self.progress - 0.01, targetProgress);
    } else {
        [progressTimer invalidate];
        progressTimer = nil;
    }
}

- (void) setProgress:(CGFloat)newProgress animated:(BOOL)animated {
    if (animated) {
        targetProgress = newProgress;
        if (progressTimer == nil) {
            progressTimer = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(moveProgress) userInfo:nil
                                                            repeats:YES];
        }
    } else {
        self.progress = newProgress;
    }
}
@end
