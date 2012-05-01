//
//  ComicDetailViewController.m
//  comic
//
//  Created by Nick Johnson on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ComicDetailViewController.h"
#import "NJCViewController.h"
#import "Comics.h"

@interface ComicDetailViewController ()
@property (nonatomic, retain)NSString *comicName;
@property (nonatomic, retain)UIImage *comicImage;

@end


@implementation ComicDetailViewController;
@synthesize comicView = _comicView;
@synthesize comicName = _comicName;
@synthesize comicImage = _comicImage;
@synthesize comics=_comics;


-(void)comicDidSaveWithName:(NSString *)comicName image:(UIImage *)image {
}

-(id)initWithComicName:(NSString *)comicName comicImage:(UIImage *)comicImage{
    if (self = [super init]){
        
        _comicName = comicName;
        _comicImage = comicImage;
        
    }
    return self;
}

- (void)setComics:(Comics *)comics {
    _comics = comics;
    
    self.comicImage = self.comics.image;
    NSLog(@"comics is %@", self.comics);
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [_comicView setImage:_comicImage];
    [self setTitle:_comicName];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
