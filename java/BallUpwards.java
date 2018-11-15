// You throw a ball vertically upwards with an initial speed v (in km per hour). The height h of the ball at each time t is given by h = v*t - 0.5*g*t*t where g is Earth's gravity (g ~ 9.81 m/s**2). A device is recording at every tenth of second the height of the ball. For example with v = 15 km/h the device gets something of the following form: (0, 0.0), (1, 0.367...), (2, 0.637...), (3, 0.808...), (4, 0.881..) ... where the first number is the time in tenth of second and the second number the height in meter.

// Task
// Write a function max_ball with parameter v (in km per hour) that returns the time in tenth of second of the maximum height recorded by the device.

// Examples:
// max_ball(15) should return 4

// max_ball(25) should return 7

// Notes
// Remember to convert the velocity from km/h to m/s or from m/s in km/h when necessary.
// The maximum height recorded by the device is not necessarily the maximum height reached by the ball.

//    _____           _           _     _                 
//    / ____|         | |         | |   (_)                
//   | (___     ___   | |  _   _  | |_   _    ___    _ __  
//    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
//    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
//   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|

public class Ball {

    static double g = 9.81;

    public static double height (double t, double v0){
        return v0*t - 0.5*g*t*t;
    }


    public static int maxBall(int v0) {
        double h,previoush;
        boolean flag = false;
        double t=0;

        previoush = height(t, (v0*1000.00)/(60*60));

        while (flag == false) {
            t += 1;

            h = height(t/10, (v0*1000.00)/(60*60));
            if (h<previoush){
                flag = true;
                t -= 1;
            }
            previoush = h;

        }

        t = Math.round(t);
        return (int) t;
    }
}