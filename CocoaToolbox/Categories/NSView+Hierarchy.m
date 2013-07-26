//
//  NSView+Hierarchy.m
//  CocoaToolbox
//
//  Created by Jason Brennan on Jun-12-2013.
//  Copyright (c) 2013 Jason Brennan. All rights reserved.
//

#import "NSView+Hierarchy.h"

@implementation NSView (Hierarchy)


- (void)addSubviewResizingToFitBounds:(NSView *)subview {
	CGRect bounds = [self bounds];
	[subview setFrame:bounds];
	
	[self addSubview:subview];
}


- (CGPoint)centerPointOfBounds {
	CGPoint p = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
	return p;
}


+ (CGRect)aspectFittedRect:(CGRect)inRect containerRect:(CGRect)containerRect {
	float originalAspectRatio = inRect.size.width / inRect.size.height;
	float maxAspectRatio = containerRect.size.width / containerRect.size.height;
	
	CGRect newRect = containerRect;
	if (originalAspectRatio > maxAspectRatio) { // scale by width
		newRect.size.height = containerRect.size.width * inRect.size.height / inRect.size.width;
		newRect.origin.y += (containerRect.size.height - newRect.size.height)/2.0;
	} else {
		newRect.size.width = containerRect.size.height  * inRect.size.width / inRect.size.height;
		newRect.origin.x += (containerRect.size.width - newRect.size.width)/2.0;
	}
	
	return CGRectIntegral(newRect);
}


+ (CGAffineTransform)aspectFittedScaleForBoundsRect:(CGRect)inRect containerRect:(CGRect)containerRect {
	CGRect scaledRect = [self aspectFittedRect:inRect containerRect:containerRect];
	
	CGFloat xScale = CGRectGetWidth(scaledRect) / CGRectGetWidth(inRect);
	CGFloat yScale = CGRectGetHeight(scaledRect) / CGRectGetHeight(inRect);
	return CGAffineTransformMakeScale(xScale, yScale);
	
}


+ (instancetype)newWithSuperview:(NSView *)superview {
	NSView *view = [self newWithSuperview:superview frame:CGRectMake(0, 0, 0, 0)];
	[superview addSubviewResizingToFitBounds:view];
	return view;
}


+ (instancetype)newWithSuperview:(NSView *)superview frame:(CGRect)frame {
	NSView *view = [[self alloc] initWithFrame:frame];
	[superview addSubview:view];
	return view;
}


@end
