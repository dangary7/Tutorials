//
//  main.m
//  AreYouAWizard
//
//  Created by Apple User on 4/8/19.
//  Copyright © 2019 Apple User. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //These are the different variables that will be evaluated to generate responses:
        float strength, intelligence, speed, alchemy_skill, sum, avg;
        
        //I included (1-10) so that users would know how to answer.
        NSLog(@"What is your strength (1-10)?");
        scanf("%f", &strength);
        
        //Each while statement is designed to make sure that inputs for each question are between 1 and 10
        while(strength>10||strength<1)
        {
            NSLog(@"Your answer is deceitful!");
            NSLog(@"What is your strength (1-10)?");
            scanf("%f", &strength);
        }
        
        NSLog(@"What is your intelligence (1-10)?");
        scanf("%f", &intelligence);
        
        //Each while statement is designed to make sure that inputs for each question are between 1 and 10
        while(intelligence>10||intelligence<1)
        {
            NSLog(@"Your answer is deceitful!");
            NSLog(@"What is your intelligence (1-10)?");
            scanf("%f", &intelligence);
        }
        
        NSLog (@"What is your speed (1-10)?");
        scanf ("%f", &speed);
        
        //Each while statement is designed to make sure that inputs for each question are between 1 and 10
        while(speed>10||speed<1)
        {
            NSLog(@"Your answer is deceitful!");
            NSLog(@"What is your speed (1-10)?");
            scanf("%f", &speed);
        }
        
        NSLog (@"What is your alchemy skill level (1-10)?");
        scanf ("%f", &alchemy_skill);
        
        //Each while statement is designed to make sure that inputs for each question are between 1 and 10
        while(alchemy_skill>10||alchemy_skill<1)
        {
            NSLog(@"Your answer is deceitful!");
            NSLog(@"What is your alchemy_skill (1-10)?");
            scanf("%f", &alchemy_skill);
        }
        
        sum = strength + intelligence + speed + alchemy_skill;
        avg = (strength + intelligence + speed + alchemy_skill)/4;
        
        //Here are the logical statements that determine a response based on the user's input for various skills!
        while (sum == 40)
        {
            NSLog(@"You are a WIZARD! You cannot be defeated!! This simple program loops in honor of you!");
        }
        if (strength >= 8 && intelligence >= 8 && (alchemy_skill + speed)/2 < 7)
        {
            NSLog(@"You are a clever brute. You are known for your defense of Aristotle's logic, while being equally admired by competent athletes. In the gladiator ring, your intelligence outmatches beings of even greater strength.");
        }
        else if (speed >= 8 && intelligence >= 8 && (alchemy_skill + strength)/2 < 7)
        {
            NSLog(@"You are an assassin. Your sharp blade and agile mind, gleam in the shadows. Being not particularly confrontational, you wear an aura of mystery.");
        }
        else if (alchemy_skill >= 8 && intelligence >= 8 && (strength + speed)/2 < 7)
        {
            NSLog(@"You are a cleric. You summon mysterious powers to heal and protect.");
        }
        else if (avg >= 8 && avg <= 9)
        {
            NSLog(@"You are a mage, apprenticed to a great wizard. One day you may be a master of the universe.");
        }
        else if (avg >= 5 && avg <= 7)
        {
            NSLog(@"You are a commoner. You will live a long life, and tend to your property.");
        }
        else if (avg >= 1 && avg <= 4)
        {
            NSLog(@"You are a peasant. Your lord is cruel. He does not compensate you for the work that you accomplish. You only dream of being successful. :(");
        }
    }
    return 0;
}
