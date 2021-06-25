package CT;
import java.util.*;

public class BloomFilter
{
	static int p,g,x,r;
	static double y,C,c1;
	public static void initialize(){
	
	p=getPrimeP();
	g=getPrimeG();
	x=getSecrectValue();
	r=getRandomValue();
	}

public static int getPrimeP(){

int p1 = 0;
        Random rand = new Random(); 
        p1= rand.nextInt(100) + 1;

        while (!isPrimeP(p1)) {          
            p1 = rand.nextInt(100) + 1;
        }

return p1;
}



public static int getPrimeG(){

int g1= 0;
        Random rand = new Random(); 
        g1 = rand.nextInt(10) + 1;

        while (!isPrimeG(g1)) {          
            g1= rand.nextInt(10) + 1;
        }

return g1;
}


public static int getSecrectValue(){

int x1=0;
        Random rand = new Random(); 
        x1 = rand.nextInt(10);

return x1;
}

public static int getRandomValue(){

int r1=0;
        Random rand = new Random(); 
        r1 = rand.nextInt(10);

return r1;

}

public static double proof(){

 y=(Math.pow(g,x))%p;

 C=(Math.pow(g,r))%p;

double t=(x+r)%(p-1);

 c1=Math.pow(g,t)%p;

System.out.println("c1="+c1);

return C;

}


public static boolean validate(double pf){

boolean sts=false;

double c2=pf*y%p;

System.out.println("c2="+c2);


/*int t1=((x+1)+r)%(p-1);

int c3=(int)Math.pow(g,t1)%p;

System.out.println("c3="+c3);*/



if (c1==c2)
	{
sts=true;
	}

else{

sts=false;
}

return sts;

}



private static boolean isPrimeP(int inputNum){
        if (inputNum <= 3 || inputNum % 2 == 0) 
            return inputNum == 2 || inputNum == 3; 
        int divisor = 3;
        while ((divisor <= Math.sqrt(inputNum)) && (inputNum % divisor != 0)) 
            divisor += 2; 
        return inputNum % divisor != 0;
    }


private static boolean isPrimeG(int inputNum){
        if (inputNum <= 3 || inputNum % 2 == 0) 
            return inputNum == 2 || inputNum == 3; 
        int divisor = 3;
        while ((divisor <= Math.sqrt(inputNum)) && (inputNum % divisor != 0)) 
            divisor += 2; 
        return inputNum % divisor != 0;
    }




}
