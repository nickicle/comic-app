//
//  NJCViewController.m
//  comic
//
//  Created by Nick Johnson on 12/5/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NJCViewController.h"
#import "ComicDetailViewController.h"
#import "Comics.h"


@implementation NJCViewController
@synthesize imageView = _imageView,takePicture, textfield = _textfield, comicname = comicname;
@synthesize managedObjectContext =_managedObjectContext;
@synthesize delegate;

-(NSManagedObjectContext*)managedObjectContext{
    
    return _managedObjectContext;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}
- (IBAction)backroundTapped:(id)sender {
       [self.textfield resignFirstResponder];
}
- (IBAction)keyBoardHide:(id)sender {
       [self.textfield resignFirstResponder];
}
#pragma mark - View lifecycle

- (void)viewDidLoad
{
    if(![UIImagePickerController isSourceTypeAvailable:
         UIImagePickerControllerSourceTypeCamera]){
        takePicture.hidden =  YES;
    }
    
    
    //[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)getcameraPicture:(id)sender{
        UIImagePickerController *picker =
    [[UIImagePickerController alloc]init];
    picker.delegate = self;
   //picker.allowsImageEditing = NO;
    picker.sourceType = (sender == takePicture);
   // UIImagePickerControllerSourceTypeCamera ;
   // UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentModalViewController:picker animated:YES];
    

}
-(IBAction)selectExistingPicture{
    if ([UIImagePickerController isSourceTypeAvailable
         :(UIImagePickerControllerSourceTypePhotoLibrary)]){
        UIImagePickerController *picker = 
        [[UIImagePickerController alloc] init];
        picker.delegate = self;
        //picker.allowsImageEditing = NO;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentModalViewController:picker animated:YES];
    }
    else {
        UIAlertView *alert =[[UIAlertView alloc]
                             initWithTitle:@"Error accessing photo libaray" 
                             message:@"device does not support a photo library" 
                             delegate:nil 
                             cancelButtonTitle:@"dismiss" 
                             otherButtonTitles:nil];
        [alert show];
    }
}
-(IBAction)save{
    [delegate comicDidSaveWithName:_textfield.text image:_imageView.image];
    [[self navigationController]popViewControllerAnimated:YES];
    //_textfield = comicname;
}

#pragma mark -

-(void)imagePickerController:(UIImagePickerController *)picker 
       didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo{
    
    [_imageView setImage:image];
    [picker dismissModalViewControllerAnimated:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
