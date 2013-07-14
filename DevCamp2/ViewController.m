//
//  ViewController.m
//  DevCamp2
//
//  Created by David Wilson on 7/13/13.
//  Copyright (c) 2013 David Wilson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)setTheLabel:(float)value
{
    NSString* str = [NSString stringWithFormat:@"%.4f", value];
	self.label.text = str;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	float value = self.slider.value;
	[self setTheLabel:value];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderAction:(id)sender {
	UISlider* slider = sender;
	float value = slider.value;
	[self setTheLabel:value];
	UIColor* backgroundColor = [UIColor colorWithHue:0.5 saturation:0.0 brightness:value alpha:1.0];
	self.view.backgroundColor = backgroundColor;
}
@end
