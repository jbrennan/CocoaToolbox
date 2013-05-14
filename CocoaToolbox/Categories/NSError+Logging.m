//
//  NSError+Logging.m
//  Cortex
//
//  Created by Jason Brennan on 2/8/13.
//  Copyright (c) 2013 Jason Brennan. All rights reserved.
//

#import "NSError+Logging.h"

@implementation NSError (Logging)

- (void)log {
	NSLog(@"[Error]: %@", [self userInfo]);
}


- (void)logWithMessage:(NSString *)message {
	NSLog(@"[Error]: %@: %@", message, [self userInfo]);
}

@end
