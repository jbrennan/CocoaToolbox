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


@end
