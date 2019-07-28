//
//  ViewController.m
//  Persistence
//
//  Created by ITBSCB on 9/10/2017.
//  Copyright © 2017 VTC PEAK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSUserDefaults *userDefaults;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle =[NSBundle mainBundle];
    NSString *srcPath = [bundle pathForResource:@"logo" ofType:@"png"];
    if(srcPath==nil){
        NSLog(@"Doesn't exist");
    } else {
        NSLog(@"Exist");
        UIImageView *iv =[[UIImageView alloc] initWithFrame:CGRectMake(0,0,240,82)];
        UIImage *image = [UIImage imageWithContentsOfFile:srcPath];
        iv.image = image;
        self.view = iv;
    }
    
    NSFileManager *manager = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documents = [paths objectAtIndex:0];
    NSString *destPath = [documents stringByAppendingPathComponent:@"logo.png"];
    
    if([manager fileExistsAtPath:destPath]) {
        NSLog(@"Exist!");
    } else {
        NSLog(@"Doesn't exist!");
    }
    
    if([manager fileExistsAtPath:destPath]) {
        NSLog(@"File has already been copied!");
    } else if (srcPath == nil){
        NSLog(@"Source files does not exist!");
    } else {
        NSLog(@"File being copied!");
        NSError *error;
        [manager copyItemAtPath:srcPath toPath:destPath error:&error];
        NSLog(@"%@", destPath);
    }
    
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    [self.userDefaults setObject:@"Mark" forKey:@"name"];
    [self.userDefaults setInteger:1001334 forKey:@"score"];
    [self.userDefaults setDouble:3.1415 forKey:@"double"];
    [self.userDefaults setFloat:3.12225 forKey:@"float"];
    [self.userDefaults synchronize];
    
    
    NSString *name = [self.userDefaults stringForKey:@"name"];
    NSInteger score = [self.userDefaults integerForKey:@"score"];
    float floatData = [self.userDefaults floatForKey:@"float"];
    double doubleData = [self.userDefaults doubleForKey:@"double"];
    NSLog(@"Name: %@\n Score: %li\n Float: %f\n Double: %f\n", name, score, floatData, doubleData);
    
    NSString *plistPath = [bundle pathForResource:@"shopping" ofType: @"plist"];
    NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    NSLog(@"%@", data);
    
    NSMutableArray *shopping = [data objectForKey:@"shopping"];
    NSLog(@"%@", shopping);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
