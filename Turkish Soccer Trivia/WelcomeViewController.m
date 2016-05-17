//
//  WelcomeViewController.m
//  Turkish Soccer Trivia
//
//  Created by macbook pro on 5/8/16.
//  Copyright © 2016 berkaysebat.com.trivia. All rights reserved.
//

#import "WelcomeViewController.h"
#import "QuestionScreenViewController.h"

@interface WelcomeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *Welcome_Image;
@property (weak, nonatomic) IBOutlet UITextField *Text_Container;



@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.language_options=[[NSArray alloc]initWithObjects:@"English",@"Turkish", nil];
    UIPickerView *language_selection=[[UIPickerView alloc]init];
    language_selection.delegate=self;
    language_selection.dataSource=self;
    [language_selection setShowsSelectionIndicator:YES];
    [self.Text_Container setInputView:language_selection];
    
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return self.language_options.count;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [self.language_options objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    self.Text_Container.text=[self.language_options objectAtIndex:row];
    [self.Text_Container resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    QuestionScreenViewController *question=[segue destinationViewController];
    [question setLanguage:self.Text_Container.text];
}


@end
