//
//  Comics.h
//  comic
//
//  Created by Nick Johnson on 12/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Comics : NSObject 

@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* instructions;
@property (nonatomic, retain) UIImage* image;
@property (nonatomic, retain) NSData *imageData;

@end
