//
//  EditViewController.m
//  Persistence
//
//  Created by ITBSCB on 16/10/2017.
//  Copyright © 2017 VTC PEAK. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleField.text = self.titleText;
    self.contentField.text = self.contentText;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void) viewWillDisappear:(BOOL)animated {
    
    self.titleText = self.titleField.text;
    self.contentText = self.contentField.text;
    
    [self performSegueWithIdentifier:@"saveSegue" sender:self];
}


@end
