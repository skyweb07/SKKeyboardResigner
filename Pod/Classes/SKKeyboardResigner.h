//
//  SKKeyboardResigner.h
//  SKKeyboardResigner
//
//  Created by Skyweb Production on 24/3/15.
//  Copyright (c) 2015 Oscar Duran. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface SKKeyboardResigner : NSObject

/**
 *  Attach observer to a custom view that contains textfields inside itself
 *
 *  @param view view that contains textfields
 */
+ (void)attachObserverToView:(UIView *)view;

/**
 *  Attach observer to a custom view where the textfields are outside the container
 *
 *  @param view       view to observe tap events
 *  @param textFields list of textfields to resign if they are active outside the view container
 */
+ (void)attachObserverToView:(UIView *)view textFieldsToObserve:(UITextField *)textFields,... NS_REQUIRES_NIL_TERMINATION;

@end
