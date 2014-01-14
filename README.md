TYDotIndicatorView
==================

Animated dots to show the progress of something... (The light color dots with dark background look nice.)

Specify the shape of dots by dotStyle (including squre, rounded corner and circle), the color of dot by dotColor and the size of dot by dotSize.

Then, start animating...

**Usage**

    TYDotIndicatorView *dot = [[TYDotIndicatorView alloc] initWithFrame:CGRectMake(30, 50, 260, 50)
                                                                     dotStyle:TYDotIndicatorViewStyleCircle
                                                                     dotColor:[UIColor greenColor]
                                                                      dotSize:CGSizeMake(15, 15)];
    [self.view addSubview:dot];
    [dot startAnimating];
    
**A Quick Peek**

![screenshots](https://f.cloud.github.com/assets/4316898/1912164/a2763078-7d36-11e3-8bd9-be440fbfc774.gif)
