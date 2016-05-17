//
//  FinalScreenViewController.m
//  Turkish Soccer Trivia
//
//  Created by macbook pro on 5/11/16.
//  Copyright © 2016 berkaysebat.com.trivia. All rights reserved.
//

#import "FinalScreenViewController.h"
#import "WelcomeViewController.h"
@interface FinalScreenViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *Image;
@property (weak, nonatomic) IBOutlet UITextView *Text;
@property (weak, nonatomic) IBOutlet UILabel *Score_Label;
@property (weak, nonatomic) IBOutlet UIButton *Button;






@end

@implementation FinalScreenViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *tite=@(self.score).stringValue;
    NSString *score_cap=@"/31";
    NSString *score_display=[NSString stringWithFormat:@"%@%@",tite,score_cap];
    self.Score_Label.layer.cornerRadius=20;
    self.Score_Label.text=score_display;
    UIImage *one_star = [UIImage imageNamed:@"One_Star.jpg"];
    UIImage *two_star = [UIImage imageNamed:@"Two_Star.jpg"];
    UIImage *three_star = [UIImage imageNamed:@"Three_Star.jpg"];
    UIImage *four_star = [UIImage imageNamed:@"Four_Star.jpg"];
    UIImage *five_star = [UIImage imageNamed:@"Five_Star.jpg"];
    self.Score_Label.layer.cornerRadius=20;
    
    
   
    NSLog(@"the language is %@",self.language_options_final);
    
    
    if ([self.language_options_final isEqual:@"English"]) {
        NSLog(@"if statement reached");
        [self.Button setTitle:@"Try Again" forState:UIControlStateNormal];
        
        
        if (self.score==1) {
            self.Text.text=@"You need to watch a lot more football! Practive more then come back!";
            [self.Image setImage:one_star];
            
        } else if (self.score==2) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:one_star];
        } else if (self.score==3) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:one_star];
        } else if (self.score==4) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:one_star];
        } else if (self.score==5) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:two_star];
        } else if (self.score==6) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:two_star];
        } else if (self.score==7) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:two_star];
        } else if (self.score==8) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:two_star];
        } else if (self.score==9) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:two_star];
        } else if (self.score==10) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:two_star];
        } else if (self.score==11) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:three_star];
        } else if (self.score==12) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:three_star];
        } else if (self.score==13) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:three_star];
        } else if (self.score==14) {
            self.Text.text=@"You are getting up there! Watch a few more classic games and you will be a superstar";
            [self.Image setImage:three_star];
            
        } else if (self.score==15){
            self.Text.text=@"You are halwfay there you need to watch a few more games and learn some history";
             [self.Image setImage:three_star];
        } else if (self.score==16){
            self.Text.text=@"You are halwfay there you need to watch a few more games and learn some history";
             [self.Image setImage:three_star];
        } else if (self.score==17){
            self.Text.text=@"You are halwfay there you need to watch a few more games and learn some history";
            [self.Image setImage:three_star];
        } else if (self.score==18){
            self.Text.text=@"You are halwfay there you need to watch a few more games and learn some history";
             [self.Image setImage:three_star];
        } else if (self.score==19){
            self.Text.text=@"You are halwfay there you need to watch a few more games and learn some history";
              [self.Image setImage:three_star];
            
        } else if (self.score==20){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
        } else if (self.score==21){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
        } else if (self.score==22){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
        } else if (self.score==23){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
        } else if (self.score==24){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
        } else if (self.score==25){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
        } else if (self.score==26){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
        } else if (self.score==27){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
        } else if (self.score==28){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
        } else if (self.score==29){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league"; [self.Image setImage:four_star];
        } else if (self.score==30){
            self.Text.text=@"You are almost a Turkish football expert. You love your team and your league";
             [self.Image setImage:four_star];
            
            
        }else if (self.score==31){
            self.Text.text=@"You are an abi a Turkish football genius. You will win any bet school any trash talker. You don't have idaa bets you have idaa predictions. Every team needs a fan like you!";
             [self.Image setImage:five_star];
            
        }
        
            
    } else {
        
        NSLog(@"else statemnt reacehd");
        if (self.score==1) {
            [self.Button setTitle:@"Yeniden Dene" forState:UIControlStateNormal];
            
            self.Text.text=@"Futbol bilginizi gelistirmeniz lagzim!";
            [self.Image setImage:one_star];
        }
        
        else if (self.score==2) {
            
            self.Text.text=@"Futbol bilginizi gelistirmeniz lagzim!";
            [self.Image setImage:one_star];
        }
        else if (self.score==3) {
            
            self.Text.text=@"Futbol bilginizi gelistirmeniz lagzim!";
            [self.Image setImage:one_star];
        }
        else if (self.score==4) {
            
            self.Text.text=@"Futbol bilginizi gelistirmeniz lagzim!";
            [self.Image setImage:one_star];
        }
        else if (self.score==5) {
            
            self.Text.text=@"Futbol bilginizi gelistirmeniz lagzim!";
            [self.Image setImage:two_star];
        }
        else if (self.score==6) {
            
            self.Text.text=@"Futbol bilginizi gelistirmeniz lagzim!";
           [self.Image setImage:two_star];
        }
        else if (self.score==7) {
            
            self.Text.text=@"Futbol bilginizi gelistirmeniz lagzim!";
            [self.Image setImage:two_star];
        }
        else if (self.score==8) {
            
            self.Text.text=@"Futbol bilginizi gelistirmeniz lagzim!";
            [self.Image setImage:two_star];
        }
        else if (self.score==9) {
            
            self.Text.text=@"Futbol bilginizi gelistirmeniz lagzim!";
            [self.Image setImage:two_star];
        }

        else if (self.score==10){
            
            self.Text.text=@"Futbol bilginiz ne iyi ne kotu daha cok calisin";
            [self.Image setImage:two_star];
            
        }
        else if (self.score==10){
            
            self.Text.text=@"Futbol bilginiz ne iyi ne kotu daha cok calisin";
            [self.Image setImage:two_star];
            
        }else if (self.score==11){
            
            self.Text.text=@"Sizi kutluyorum futbol bilginiz iyi ama daha da iyi olabilir";
             [self.Image setImage:three_star];
        }
        else if (self.score==12){
            
            self.Text.text=@"Sizi kutluyorum futbol bilginiz iyi ama daha da iyi olabilir";
             [self.Image setImage:three_star];
        }
        else if (self.score==13){
            
            self.Text.text=@"Sizi kutluyorum futbol bilginiz iyi ama daha da iyi olabilir";
             [self.Image setImage:three_star];
        }
        else if (self.score==14){
            
            self.Text.text=@"Sizi kutluyorum futbol bilginiz iyi ama daha da iyi olabilir";
             [self.Image setImage:three_star];
        }
        else if (self.score==15){
            
            self.Text.text=@"Sizi kutluyorum futbol bilginiz iyi ama daha da iyi olabilir";
             [self.Image setImage:three_star];
        }
        else if (self.score==16){
            
            self.Text.text=@"Sizi kutluyorum futbol bilginiz iyi ama daha da iyi olabilir";
             [self.Image setImage:three_star];
        }
        else if (self.score==17){
            
            self.Text.text=@"Sizi kutluyorum futbol bilginiz iyi ama daha da iyi olabilir";
             [self.Image setImage:three_star];
        }
        else if (self.score==18){
            
            self.Text.text=@"Sizi kutluyorum futbol bilginiz iyi ama daha da iyi olabilir";
             [self.Image setImage:three_star];
        }
        else if (self.score==19){
            
            self.Text.text=@"Sizi kutluyorum futbol bilginiz iyi ama daha da iyi olabilir";
             [self.Image setImage:three_star];
        }
        
        else if (self.score==20){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
             [self.Image setImage:three_star];
            
            
        }
        else if (self.score==21){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            
             [self.Image setImage:four_star];
        }
        else if (self.score==22){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            [self.Image setImage:four_star];
            
        }
        else if (self.score==23){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            [self.Image setImage:four_star];
            
        }
        else if (self.score==24){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            [self.Image setImage:four_star];
            
        }
        else if (self.score==25){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            [self.Image setImage:four_star];
            
        }
        
        
        
        else if (self.score==26){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            [self.Image setImage:four_star];
            
        }
        else if (self.score==27){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            [self.Image setImage:four_star];
            
        }
        else if (self.score==28){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            
            [self.Image setImage:four_star];
        }
        else if (self.score==29){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            [self.Image setImage:four_star];
            
        }
        else if (self.score==30){
            
            self.Text.text=@"Futbol bilginiz cok iyi tebrik ederim. Idaa oynayin!";
            
            [self.Image setImage:four_star];
        }
        
        else if (self.score==31){
            
            self.Text.text=@" YUH! Abi siz tam bir futbol hastasiniz! 31 soruda bir hata bile yapmadan tam 31 cektin helal olsun.Sizin icin idaa kumar degir yatirimdir!";
            [self.Image setImage:five_star];
        }
        
        
        
        
        
        
        
        
        
        
    }
    
        
}
    
    
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Button_Selected:(id)sender {
    NSLog(@"BUTTON");
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)touchy:(id)sender {
    NSLog(@"BUTTON");
    [self.navigationController popToRootViewControllerAnimated:YES];
}






@end
