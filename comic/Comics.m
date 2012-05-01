//
//  Comics.m
//  comic
//
//  Created by Nick Johnson on 12/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Comics.h"

@implementation Comics
@synthesize name, instructions, image=_image, imageData=_imageData;

- (void)setImage:(UIImage *)image {
    _image = image;
    
    self.imageData = UIImagePNGRepresentation(self.image);
}

- (UIImage *)image {
    if (!_image && _imageData) {
        self.image = [[UIImage alloc] initWithData:self.imageData];
    }
    
    return _image;
    
    // TODO: make this work with setting new images through the imageData property
}

- (NSString*)description
{
	return [NSString stringWithFormat:@"%@ %@", [super description], self.name];
}

@end
