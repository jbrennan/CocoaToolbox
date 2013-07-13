//
//  NSArray+JBTools.m
//  CocoaToolbox
//
//  Created by Jason Brennan on May-04-2013.
//  Copyright (c) 2013 Jason Brennan. All rights reserved.
//

#import "NSArray+JBTools.h"

@implementation NSArray (JBTools)

- (id)zerothObject {
	if ([self count]) return self[0];
	return nil;
}

@end
