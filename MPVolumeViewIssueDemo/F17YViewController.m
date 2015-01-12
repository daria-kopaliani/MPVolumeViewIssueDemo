//
//  F17YViewController.m
//  MPVolumeViewIssueDemo
//
//  Created by Daria Kopaliani on 1/12/15.
//  Copyright (c) 2015 F17Y. All rights reserved.
//

#import "F17YViewController.h"

#import <MediaPlayer/MediaPlayer.h>

@interface F17YViewController ()

@end

@implementation F17YViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showPlayer:(id)sender {
    
    UIViewController *playerViewController = [[UIViewController alloc] init];
    playerViewController.view.backgroundColor = [UIColor whiteColor];
    MPVolumeView *volumeView = [[MPVolumeView alloc] initWithFrame:CGRectMake(10.f, 0.f, CGRectGetWidth(self.view.frame) - 20.f, 30.f)];
    [[UISlider appearanceWhenContainedIn:[MPVolumeView class], nil] setMinimumValueImage:[UIImage imageNamed:@"icon-volumeMin"]];
    [[UISlider appearanceWhenContainedIn:[MPVolumeView class], nil] setMaximumValueImage:[UIImage imageNamed:@"icon-volumeMax"]];
    volumeView.center = CGPointMake(0.5f * CGRectGetWidth(self.view.frame), 0.5f * CGRectGetHeight(self.view.frame));
    [playerViewController.view addSubview:volumeView];
    [self.navigationController pushViewController:playerViewController animated:YES];
}

@end
