//
//  SKKeyboardResigner.m
//  SKKeyboardResigner
//
//  Created by Skyweb Production on 24/3/15.
//  Copyright (c) 2015 Oscar Duran. All rights reserved.
//

#import "SKKeyboardResigner.h"
#import "UIView+Utils.h"

@implementation SKKeyboardResigner

+ (void)attachObserverToView:(UIView *)view {
    [self attachObserverToView:view textFieldsToObserve:nil];
}

+ (void)attachObserverToView:(UIView *)view textFieldsToObserve:(UITextField *)textFields,... {
    __block typeof(UIView *)weakView = view;
    
    /**
     *  Parse variadic textfields from here :(
     */
    NSMutableArray *localTextFields = [NSMutableArray array];
    
    va_list args;
    va_start(args, textFields);
    
    for (UITextField *textField = textFields; textField != nil; textField = va_arg(args, UITextField *)) {
        [localTextFields addObject:textField];
    }
    va_end(args);
    
    /**
     *  Add tap gesture into view
     */

    [view addTapGestureRecognizerWithCompletionBlock:^{
        if (textFields) {
            [self dismissTextFieldsUnderObserve:localTextFields];
        } else {
            [self dismissTextFieldsInView:weakView];
        }
    }];
}

#pragma mark - Dismiss functions

+ (void)dismissTextFieldsUnderObserve:(NSArray *)textFields {
    for (UITextField *textField in textFields) {
        if ([textField isFirstResponder]) {
            [textField resignFirstResponder];
            break;
        }
    }
}

+ (void)dismissTextFieldsInView:(__weak UIView *)view {
    for (id subview in view.subviews) {
        if ([subview isKindOfClass:[UITextField class]] &&
            [subview isFirstResponder]) {
            [subview resignFirstResponder];
            break;
        }
    }
}

@end
