//
//  QuestionScreenViewController.m
//  Turkish Soccer Trivia
//
//  Created by macbook pro on 4/24/16.
//  Copyright © 2016 berkaysebat.com.trivia. All rights reserved.
//

#import "QuestionScreenViewController.h"
#import "Question_Class.h"
@import UIKit;
#import <QuartzCore/QuartzCore.h>

@interface QuestionScreenViewController ()
@property (weak, nonatomic) IBOutlet UIButton *Button_1;
@property (weak, nonatomic) IBOutlet UIButton *Button_2;
@property (weak, nonatomic) IBOutlet UIButton *Button_3;
@property (weak, nonatomic) IBOutlet UIButton *Button_4;
@property (weak, nonatomic) IBOutlet UITextView *Questions;
@property Question_Class *currentquestion;
@property int j;
@property int m;




@end



@implementation QuestionScreenViewController{
    NSMutableArray *Questions_List;
    
}




-(void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    Questions_List=[[NSMutableArray alloc]init];
    
    Question_Class *Super_Lig96=[[Question_Class alloc]init];
    Super_Lig96.Question=@"Which Team Won the Super Lig in 1996?";
    Super_Lig96.Correct_Answer=@"Galatasaray";
    Super_Lig96.Wrong_Answer_1=@"Besiktas";
    Super_Lig96.Wrong_Answer_2=@"Fenerbahce";
    Super_Lig96.Wrong_Answer_3=@"Trabzonspor";
    [Questions_List addObject:Super_Lig96];
    

   
    Question_Class *All_Time=[[Question_Class alloc]init];
    All_Time.Question=@"Who Is the All Time Top Goal Scorer in Turkish Football?";
    All_Time.Correct_Answer=@"Metin Oktay";
    All_Time.Wrong_Answer_1=@"Tanju Çolak";
    All_Time.Wrong_Answer_2=@"Hakan Şükür";
    All_Time.Wrong_Answer_3=@"Alex";
    [Questions_List addObject:All_Time];
   
    
    
   
   
    [self selectinit];
        
    
    
    
   
    
    
    
}
-(void)selectinit{
    
    
    self.j=0;
    
    self.currentquestion=[Questions_List objectAtIndex:self.j];
    
    
    self.Questions.text=self.currentquestion.Question;
    
    NSString *choice1=self.currentquestion.Correct_Answer;
    NSString *choice2=self.currentquestion.Wrong_Answer_1;
    NSString *choice3=self.currentquestion.Wrong_Answer_2;
    NSString *choice4=self.currentquestion.Wrong_Answer_3;
    
    NSMutableArray *titles=[[NSMutableArray alloc]init];
    
    [titles addObject:choice1];
    [titles addObject:choice2];
    [titles addObject:choice3];
    [titles addObject:choice4];
 
    for (int x=0; x<titles.count-1; x++) {
        [titles exchangeObjectAtIndex:x withObjectAtIndex:arc4random()%4];
    }
    
    
    
    
    
    [self.Button_1 setTitle:titles[0]forState:UIControlStateNormal];
    [self.Button_2 setTitle:titles[1] forState:UIControlStateNormal];
    [self.Button_3 setTitle:titles[2] forState:UIControlStateNormal];
    [self.Button_4 setTitle:titles[3] forState:UIControlStateNormal];
    
    self.j++;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ButtonPress:(id)sender {
    UIButton *someButton = (UIButton*)sender;
    NSString *selected= [someButton titleForState:UIControlStateNormal];
    
    
    if (selected== self.currentquestion.Correct_Answer) {
            self.m++;
        [self nextquestion];
   
        
        NSLog(@"NUMBER OF CORRECT ANSWERS IS %d",self.m);
    }
    else{
        [self nextquestion];
        
    }
 
    
}
-(void)nextquestion{
    
    if (self.j== Questions_List.count) {
        
        NSString *strValue = @(self.m).stringValue;
        NSMutableString *string1 = [NSMutableString stringWithString: @"You got "];
        [string1 appendString:strValue];
        NSString *messaged=@" out of 40 correct !";
NSString * arisefate = [NSString stringWithFormat:@"%@%@", string1, messaged];
        
        UIAlertController * alert=   [UIAlertController
                                     alertControllerWithTitle:@"Thats The Last Question"
                                      message:arisefate
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        [self presentViewController:alert animated:YES completion:^{
            [self viewDidLoad];
            
            self.m=0;
        }];
        
        
        UIAlertAction* ok = [UIAlertAction
                             actionWithTitle:@"Try Again"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
        
         [alert addAction:ok];
        
        
    }
    
    else{
    
    self.currentquestion=[Questions_List objectAtIndex:self.j];
    
    
    self.Questions.text=self.currentquestion.Question;
    
    NSString *possible1=self.currentquestion.Correct_Answer;
    NSString *possible2=self.currentquestion.Wrong_Answer_1;
    NSString *possible3=self.currentquestion.Wrong_Answer_2;
    NSString *possible4=self.currentquestion.Wrong_Answer_3;
    
    
    
    NSMutableArray *squared=[[NSMutableArray alloc]init];
    
    [squared addObject:possible1];
    [squared addObject:possible2];
    [squared addObject:possible3];
    [squared addObject:possible4];
    
    for (int p=0; p<squared.count-1; p++) {
        [squared exchangeObjectAtIndex:p withObjectAtIndex:arc4random()%4];
    }
    
    
    
    
    
    [self.Button_1 setTitle:squared[0]forState:UIControlStateNormal];
    [self.Button_2 setTitle:squared[1] forState:UIControlStateNormal];
    [self.Button_3 setTitle:squared[2] forState:UIControlStateNormal];
    [self.Button_4 setTitle:squared[3] forState:UIControlStateNormal];
    self.j++;
    
    }
    
    
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
