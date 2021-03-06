//
//  AddFilterViewController.m
//  Booming
//
//  Created by GOLD on 5/29/15.
//  Copyright (c) 2015 GOLD. All rights reserved.
//

#import "AddFilterViewController.h"
#import "EventListViewController.h"

@interface AddFilterViewController ()

@end

@implementation AddFilterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.boominRate addTarget:self action:@selector(optionChoose:) forControlEvents:UIControlEventTouchUpInside];
    [self.invitePeople addTarget:self action:@selector(optionChoose:) forControlEvents:UIControlEventTouchUpInside];
    [self.joinPeople addTarget:self action:@selector(optionChoose:) forControlEvents:UIControlEventTouchUpInside];
    [self.joinMen addTarget:self action:@selector(optionChoose:) forControlEvents:UIControlEventTouchUpInside];
    [self.joinWomen addTarget:self action:@selector(optionChoose:) forControlEvents:UIControlEventTouchUpInside];
    [self.averageUp addTarget:self action:@selector(optionChoose:) forControlEvents:UIControlEventTouchUpInside];
    [self.averageDown addTarget:self action:@selector(optionChoose:) forControlEvents:UIControlEventTouchUpInside];
}

- (IBAction)optionChoose:(UIButton*)sender {
    sender.selected = !sender.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backBtn:(id)sender {
    CATransition *transition = [CATransition animation];
    transition.duration = 0.4;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    [self.view.window.layer addAnimation:transition forKey:nil];
    
    EventListViewController *eventListViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"EventsList"];
    [self presentViewController:eventListViewController animated:NO completion:nil];
}

- (IBAction)doneBtn:(id)sender {
    CATransition *transition = [CATransition animation];
    transition.duration = 0.4;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    [self.view.window.layer addAnimation:transition forKey:nil];
    
    EventListViewController *eventListViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"EventsList"];
    [self presentViewController:eventListViewController animated:NO completion:nil];
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
