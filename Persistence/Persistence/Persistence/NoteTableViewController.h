//
//  NoteTableViewController.h
//  Persistence
//
//  Created by ITBSCB on 16/10/2017.
//  Copyright © 2017 VTC PEAK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoteTableViewController : UITableViewController

@property (nonatomic, retain) NSMutableArray *items;
@property (nonatomic, retain) NSMutableArray *timeStamp;
@property (nonatomic, retain) NSMutableArray *content;
@property (nonatomic, retain) NSString *savePath;

-(IBAction) addNote:(UIBarButtonItem*)sender;
-(IBAction) editTable:(UIBarButtonItem*)sender;



@end
