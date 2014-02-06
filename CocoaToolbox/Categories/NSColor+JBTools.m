//
//  NSColor+JBTools.m
//  CocoaToolbox
//
//  Created by Jason Brennan on Feb-05-2014.
//  Copyright (c) 2014 Jason Brennan. All rights reserved.
//

#import "NSColor+JBTools.h"

@implementation NSColor (JBTools)

+ (NSColor *)randomColor {
	CGFloat hue = (arc4random() % 360) / 360.0;
	return [NSColor colorWithDeviceHue:hue saturation:0.7 brightness:1 alpha:1];
}

@end
