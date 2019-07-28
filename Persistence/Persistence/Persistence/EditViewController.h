//
//  EditViewController.h
//  Persistence
//
//  Created by ITBSCB on 16/10/2017.
//  Copyright © 2017 VTC PEAK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextView *contentField;
@property (nonatomic, retain) NSString *noteIndex;
@property (nonatomic, retain) NSString *titleText;
@property (nonatomic, retain) NSString *contentText;



@end
