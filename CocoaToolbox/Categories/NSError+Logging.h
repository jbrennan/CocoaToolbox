//
//  NSError+Logging.h
//  Cortex
//
//  Created by Jason Brennan on 2/8/13.
//  Copyright (c) 2013 Jason Brennan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSError (Logging)
- (void)log;
- (void)logWithMessage:(NSString *)message;
@end
