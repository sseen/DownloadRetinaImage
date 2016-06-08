//
//  ViewController.m
//  DownloadRetinaImage
//
//  Created by sseen on 16/6/8.
//  Copyright © 2016年 sseen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imvNormal;
@property (weak, nonatomic) IBOutlet UIImageView *imvRetina;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [NSURL URLWithString:@"http://images.apple.com/v/mac/home/s/home/images/pro_finalcut_header_large.png"];
    UIImage *myImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
    
    _imvNormal.image = myImage;
    _imvRetina.image = [UIImage imageWithCGImage:[myImage CGImage] scale:2.0 orientation:UIImageOrientationUp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
