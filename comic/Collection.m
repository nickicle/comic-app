//
//  Collection.m
//  comic
//
//  Created by Nick Johnson on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Collection.h"
#import "Comics.h"
@interface Collection()
@property (nonatomic, retain) NSMutableArray* mutableComics;
@end
@implementation Collection
@synthesize mutableComics = _mutableComics;
@synthesize comics =_comics;
@synthesize managedObjectConntext;

-(NSArray*)comics{
    return self.mutableComics;
    
}
- (id)init {
    self = [super init];
    if (self) {
        _mutableComics=[NSMutableArray array];
    }
    return self;
}
-(void)addComic:(Comics*)comic{

    
}

@end
