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
    self.versionLabel.text = verstr;
    NSLog(@"当前的软件版本是:%@", verstr);
    
    //用于测试git Diff的命令
    NSLog(@"************************git Diff的输出************************");
    
    //新建立了dev分支
    NSLog(@"#######################新建了  Dev的分支######################");
    
    //增加BUG修复的分支<以下为工作现场>  ??? 目前该参数还是无法确认的，没有办法提交
    //这个时候有一个新的BUG 需要紧急修改   git stash
    NSLog(@"workHalf 分支的工作 %@", @"后面补充  git stash drop 之后添加的LOG");
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
    
    //此处有一个BUG  新建立  bugIssue01的分支来处理该问题
    NSLog(@"修改BUG    在 【%@】 分支上", @"bugIssue01");
    
    //V0.1.1版本之后添加的Dev分支
    NSLog(@"V0.1.1版本之后添加的Dev分支");
}
@end
