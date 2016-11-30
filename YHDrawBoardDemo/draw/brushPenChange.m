//
//  brushPenChange.m
//  AcloveClass
//
//  Created by YHCloud on 2016/11/28.
//  Copyright © 2016年 YHCloud. All rights reserved.
//

#import "brushPenChange.h"

@implementation brushPenChange

+ (instancetype)initToolsViewWith:(CGRect)frame {
    brushPenChange *change = [[[NSBundle mainBundle] loadNibNamed:@"brushPenChange" owner:self options:nil] firstObject];
    change.frame = frame;
    return change;
}

- (IBAction)chooseButtonGet:(UIButton *)sender {
    if (self.blockButtonCall) {
        self.blockButtonCall(sender,sender.tag);
    }
}

- (IBAction)progressBarChoose:(UIProgressView *)sender {
    if (self.blockProgressCall) {
        self.blockProgressCall(sender.tag);
    }
}

@end
