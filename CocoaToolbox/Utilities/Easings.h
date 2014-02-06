//
//  Easings.h
//  CocoaToolbox
//
//  Created by Jason Brennan on Feb-05-2014.
//  Copyright (c) 2014 Jason Brennan. All rights reserved.
//

#ifndef CocoaToolbox_Easings_h
#define CocoaToolbox_Easings_h

/**
 Takes a time value `t` and returns an ease-in-ease-out value corresponding to it.
 From: http://www.siggraph.org/education/materials/HyperGraph/animation/rick_parent/Full.html
*/
static inline CGFloat easeInOut(CGFloat t) {
	return (sinf(t * (CGFloat)M_PI - ((CGFloat)M_PI_2)) + 1)/2.0f;
}

#endif
