//
//  ComicDetailViewController.h
//  comic
//
//  Created by Nick Johnson on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ComicViewControllerDelegate.h"

@class Comics;
@interface ComicDetailViewController : UIViewController <ComicViewControllerDelegate>

@property(nonatomic, retain)IBOutlet UIImageView *comicView;
@property(nonatomic, retain)Comics *comics;
-(id)initWithComicName:(NSString *)comicName comicImage:(UIImage *)comicImage;

@end
