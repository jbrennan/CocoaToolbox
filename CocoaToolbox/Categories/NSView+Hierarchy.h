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
@end
