//
//  Collection.h
//  comic
//
//  Created by Nick Johnson on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.

#import <Foundation/Foundation.h>

@interface Collection : NSObject

@property (nonatomic, retain) NSArray* comics;
@property (nonatomic, retain)NSManagedObjectContext *managedObjectConntext;

@end
