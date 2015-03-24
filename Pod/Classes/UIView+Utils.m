//
//  UIView+Utils.m
//  SKKeyboardResigner
//
//  Created by Skyweb Production on 24/3/15.
//  Copyright (c) 2015 Oscar Duran. All rights reserved.
//

#import "UIView+Utils.h"

@import ObjectiveC.runtime;

static NSString * const SKTapgestureRecognizerCompletionBlockKey = @"SKTapGestureRecognierCompletionBlock";

@interface UIView ()

@property (copy, nonatomic) SKTapGestureRecognierCompletionBlock completion;

@end

@implementation UIView (Utils)

- (void)addTapGestureRecognizerWithCompletionBlock:(SKTapGestureRecognierCompletionBlock)completion {
    NSParameterAssert(completion);
    self.completion = completion;
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onViewWasTapped:)];
    [self addGestureRecognizer:tapGestureRecognizer];
}

- (void)onViewWasTapped:(UITapGestureRecognizer *)tapGestureRecognizer {
    self.completion();
}

#pragma mark - Runtime associative elements

- (void)setCompletion:(SKTapGestureRecognierCompletionBlock)completion {
    objc_setAssociatedObject(self, &SKTapgestureRecognizerCompletionBlockKey, completion, OBJC_ASSOCIATION_COPY);
}

- (SKTapGestureRecognierCompletionBlock)completion {
    return objc_getAssociatedObject(self, &SKTapgestureRecognizerCompletionBlockKey);
}

@end
