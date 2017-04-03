//
//  ViewController.m
//  GitTestDemo
//
//  Created by smart on 2017/4/2.
//  Copyright © 2017年 Hadlinks. All rights reserved.
//

#import "ViewController.h"
#import "masterBranch.h"
#import "BranchDev.h"




@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *versionLabel;
- (IBAction)testClick:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //当前的软件版本
    NSString *BundleVersionstr = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    NSString *shortVersionStr = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSString *verstr = [NSString stringWithFormat:@"V%@(%@)",shortVersionStr,BundleVersionstr];
    NSLog(@"当前的软件版本是:%@", verstr);
    
    //用于测试git Diff的命令
    NSLog(@"************************git Diff的输出************************");
    
    //新建立了dev分支
    NSLog(@"#######################新建了  Dev的分支######################");
}

#pragma mark - 按键的处理
- (IBAction)testClick:(UIButton *)sender {
    masterBranch* branch = [[masterBranch alloc] init];
    branch.branchName = @"Master branch";
    NSLog(@"当前的分支是:%@", branch.branchName);
    BranchDev* dev = [[BranchDev alloc] init];
    dev.branchName = @"DevName";
    NSLog(@"当前分支为: %@", dev.branchName);
    NSLog(@"合并分支为[%@ %@]", dev.branchName, branch.branchName);
}
@end
