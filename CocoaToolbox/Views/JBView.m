//
//  JBView.m
//  CocoaToolbox
//
//  Created by Jason Brennan on Jul-25-2013.
//  Copyright (c) 2013 Jason Brennan. All rights reserved.
//

#import "JBView.h"

@implementation JBView

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
		[self setupView];
    }
    
    return self;
}


- (id)initWithCoder:(NSCoder *)decoder {
	self = [super initWithCoder:decoder];
	if (self) {
		[self setupView];
	}
	
	return self;
}


- (void)setupView {
	
}

@end
