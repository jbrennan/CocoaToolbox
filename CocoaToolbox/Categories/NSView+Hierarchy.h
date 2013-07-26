//
//  NSView+Hierarchy.h
//  CocoaToolbox
//
//  Created by Jason Brennan on Jun-12-2013.
//  Copyright (c) 2013 Jason Brennan. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSView (Hierarchy)
- (void)addSubviewResizingToFitBounds:(NSView *)subview;

/**
 @return A `CGPoint` which is at the center of `self.bounds`. This is different than `self.center`, which is in frame coordinates.
 */
- (CGPoint)centerPointOfBounds;


/**
 @return A `CGRect` fitted with an aspect fit ratio of the old rect into its container.
 */
+ (CGRect)aspectFittedRect:(CGRect)inRect containerRect:(CGRect)containerRect;


/**
 @return A `CGAffineTransform` to do an aspect fill scale transform in its container rect.
 */
+ (CGAffineTransform)aspectFittedScaleForBoundsRect:(CGRect)inRect containerRect:(CGRect)containerRect;

/**
 @return A newly initialized view added to its superview.
 */
+ (instancetype)newWithSuperview:(NSView *)superview;


/**
 @return A newly initialized view added to its superview, sized and placed with the given frame.
 */
+ (instancetype)newWithSuperview:(NSView *)superview frame:(CGRect)frame;

@end
