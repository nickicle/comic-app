//
//  ComicViewControllerDelegate.h
//  comic
//
//  Created by Nick Johnson on 12/13/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ComicViewControllerDelegate <NSObject>

-(void)comicDidSaveWithName:(NSString *)comicName image:(UIImage *)image;
@end
