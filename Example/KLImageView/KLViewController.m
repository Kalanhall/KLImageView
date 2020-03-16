//
//  KLViewController.m
//  KLImageView
//
//  Created by Kalanhall@163.com on 03/16/2020.
//  Copyright (c) 2020 Kalanhall@163.com. All rights reserved.
//

#import "KLViewController.h"
@import KLImageView;

@interface KLViewController ()

@property (weak, nonatomic) IBOutlet KLImageView *ImageView;

@end

@implementation KLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSString *path = [NSBundle.mainBundle pathForResource:@"niconiconi@2x.gif" ofType:nil];
    NSString *path = [NSBundle.mainBundle pathForResource:@"google@2x.webp" ofType:nil];
    [self.ImageView kl_setImageWithURL:[NSURL fileURLWithPath:path] placeholder:nil options:KLWebImageOptionProgressive completion:^(UIImage * _Nullable image, NSURL * _Nonnull url, KLWebImageFromType from, KLWebImageStage stage, NSError * _Nullable error) {
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
