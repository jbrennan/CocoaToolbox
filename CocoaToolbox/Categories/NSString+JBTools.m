//
//  NSString+JBTools.m
//  CocoaToolbox
//
//  Created by Jason Brennan on May-04-2013.
//  Copyright (c) 2013 Jason Brennan. All rights reserved.
//

#import "NSString+JBTools.h"

@implementation NSString (JBTools)

- (BOOL)hasSubstring:(NSString *)substring {
	return [self rangeOfString:substring].location != NSNotFound;
}

@end
