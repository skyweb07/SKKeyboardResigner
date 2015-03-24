//
//  SKSecondViewController.m
//  SKKeyboardResigner
//
//  Created by Skyweb Production on 24/3/15.
//  Copyright (c) 2015 Oscar Duran. All rights reserved.
//

#import "SKSecondViewController.h"
#import "SKKeyboardResigner.h"

@interface SKSecondViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;

@property (weak, nonatomic) IBOutlet UIView *viewToObserve;

@end

@implementation SKSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Setup

- (void)setUp {
    [SKKeyboardResigner attachObserverToView:_viewToObserve
                         textFieldsToObserve:_textField1, _textField2, nil];
}

@end
