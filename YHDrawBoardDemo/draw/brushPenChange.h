//
//  brushPenChange.h
//  AcloveClass
//
//  Created by YHCloud on 2016/11/28.
//  Copyright © 2016年 YHCloud. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface brushPenChange : UIView

+ (instancetype)initToolsViewWith:(CGRect)frame;
@property (weak, nonatomic) IBOutlet UILabel *labWidth;
@property (weak, nonatomic) IBOutlet UILabel *labAlpha;
//block回调button点击事件
@property (nonatomic, strong) void (^blockButtonCall)(UIButton *,NSInteger);
//block回调进度条的改变
@property (nonatomic, strong) void (^blockProgressCall)(NSInteger);

@end
