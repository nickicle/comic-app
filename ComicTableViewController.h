//
//  ComicTableViewController.h
//  comic
//
//  Created by Nick Johnson on 12/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ComicViewControllerDelegate.h"
@interface ComicTableViewController : UITableViewController<ComicViewControllerDelegate>

@property (nonatomic, retain) NSMutableArray* comics;
@property (nonatomic, retain) NSMutableArray* someComics;
@property (nonatomic, retain) NSMutableArray* image;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


-(void)saveContexts;

-(NSURL *)applicationDocumentsDirectory; 

@end
