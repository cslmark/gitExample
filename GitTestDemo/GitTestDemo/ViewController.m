//
//  ViewController.m
//  GitTestDemo
//
//  Created by smart on 2017/4/2.
//  Copyright © 2017年 Hadlinks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *versionLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //当前的软件版本
    NSString *BundleVersionstr = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    NSString *shortVersionStr = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSString *verstr = [NSString stringWithFormat:@"V%@(%@)",shortVersionStr,BundleVersionstr];
    NSLog(@"当前的软件版本是:%@", verstr);
}






@end