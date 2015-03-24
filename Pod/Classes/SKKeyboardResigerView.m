//
//  SKKeyboardResigerView.m
//  SKKeyboardResigner
//
//  Created by Skyweb Production on 24/3/15.
//  Copyright (c) 2015 Oscar Duran. All rights reserved.
//

#import "SKKeyboardResigerView.h"
#import "SKKeyboardResigner.h"

@implementation SKKeyboardResigerView

- (void)awakeFromNib {
    [SKKeyboardResigner attachObserverToView:self];
}

@end
