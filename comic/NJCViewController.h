//
//  NJCViewController.h
//  comic
//
//  Created by Nick Johnson on 12/5/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ComicViewControllerDelegate.h"

@interface NJCViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property(nonatomic, retain)IBOutlet UIImageView *imageView;
@property(nonatomic, retain)IBOutlet UIButton *takePicture;
@property(nonatomic, retain)IBOutlet UITextField *textfield;
@property(nonatomic, weak)NSObject<ComicViewControllerDelegate> *delegate;
@property(nonatomic, retain)IBOutlet UINavigationItem *comicname;
@property(nonatomic, retain)NSManagedObjectContext * managedObjectContext;

-(IBAction)getcameraPicture:(id)sender;
-(IBAction)selectExistingPicture;
-(IBAction)save;
 @end
