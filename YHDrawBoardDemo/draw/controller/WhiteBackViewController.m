//
//  WhiteBackViewController.m
//  AcloveClass
//
//  Created by YHCloud on 2016/11/8.
//  Copyright © 2016年 YHCloud. All rights reserved.
//

#import "WhiteBackViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface WhiteBackViewController ()

@end

@implementation WhiteBackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadDefaultSetting];
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void)loadDefaultSetting {
    self.navigationController.navigationBar.hidden = YES;
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - 60, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:imageView];
    imageView.image = [UIImage imageNamed:@"mineMassageBack"];
}
//文件
- (IBAction)filesButtonClick:(UIButton *)sender {
    
}
//查看微录课
- (IBAction)OnlineVideoClick:(UIButton *)sender {
    
}
//开始微录课
- (IBAction)videoClassClick:(UIButton *)sender {
}
//保存当前画板的截屏
- (IBAction)saveScreenClick:(UIButton *)sender {
    UIGraphicsBeginImageContext(CGSizeMake(self.view.bounds.size.width - 110, self.view.frame.size.height));
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
    [self OK];
}

- (void)OK {
    
}

//后退一步
- (IBAction)drawBackClick:(UIButton *)sender {
    
}

//前进一步
- (IBAction)forwardClick:(UIButton *)sender {
    
}

//清除所有
- (IBAction)cleanAllClick:(UIButton *)sender {
    [self presentAlert:@"确定要清空吗?"];
}

- (void)presentAlert:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *OK = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:OK];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:nil];
}

//选择画笔
- (IBAction)choosePen:(UIButton *)sender {
    self.cancelButton.selected = NO;
    self.rubbyButton.selected = NO;
}

//选择图片
- (IBAction)chooseImageClick:(UIButton *)sender {
}

//更换背景
- (IBAction)changeBackImage:(UIButton *)sender {
}

//选择颜色
- (IBAction)chooseColorClick:(UIButton *)sender {
    
    
    switch (sender.tag) {
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        case 4:
            
            break;
        case 5:
            
            break;
            
        default:
            break;
    }
}

//取消选择
- (IBAction)cancelChooseClick:(UIButton *)sender {
    self.penChooseButton.selected = NO;
    self.rubbyButton.selected = NO;
}

//橡皮
- (IBAction)rubberClick:(UIButton *)sender {
    self.cancelButton.selected = NO;
    self.penChooseButton.selected = NO;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
