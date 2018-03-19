//
//  LoginController.m
//  Passport
//
//  Created by 张建 on 2018/3/16.
//  Copyright © 2018年 财富农场. All rights reserved.
//

#import "LoginController.h"

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(100, 200, 300, 100)];
    [self.view addSubview:text];
    
    NSBundle *bundle = [NSBundle bundleForClass:NSClassFromString(@"ZJTestPassport")];
    
    NSLog(@"%@",bundle);
    
    // 获取bundle还不够，图片在bundle的XMGLib.bundle文件中
    // 注意图片要全名
    NSString *path = [bundle pathForResource:@"ZJTestPassport.bundle/mogu.png" ofType:nil];
    
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    
    UIImageView *imageview = [[UIImageView alloc]initWithImage:image];
    imageview.frame = CGRectMake(100, 300, image.size.width, image.size.height);
    [self.view addSubview:imageview];
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

@end
