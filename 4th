public class MyClass {
    int real,img;
    MyClass(int a){
        this.real=a;
        this.img=0;
    }
    MyClass(int x, int y){
        this.real=x;
        this.img=y;
    }
    void add(MyClass ...x){
        MyClass temp = new MyClass(0,0);
        System.out.print("The Addition of "+ x.length+" terms is : ");
        for(MyClass i : x){
            temp.real+=i.real;
            temp.img+=i.img;
        }
     
        if(temp.img!=0)
        System.out.println(temp.real +" +"+temp.img+"i");
        else
            System.out.println(temp.real);
        
    }
    void subtract(MyClass ...x){
         MyClass temp = new MyClass(0,0);
         System.out.print("The Subtraction of "+ x.length+" terms is : ");
        for(MyClass i : x){
            temp.real=i.real-temp.real;
            temp.img=i.img-temp.img;
        }
     
       if(temp.img!=0){
            System.out.println(temp.real +" +"+temp.img+"i");
       }
       else
          
            System.out.println(temp.real);
    }
    public static void main(String args[]) {
      MyClass m1= new MyClass(2,3);
      MyClass m2= new MyClass(5,5);
      MyClass m3 = new MyClass(2,2);
      MyClass m4 = new MyClass(8,8);
      MyClass m5 = new MyClass(0,0);
      
      MyClass k1 = new MyClass(1);
      MyClass k2 = new MyClass(2);
      MyClass k3 = new MyClass(3);
      MyClass k4 = new MyClass(0);
      
      k4.add(k1,k2,k3);
      k4.subtract(k1,k2,k3);
      
      m5.add(m1,m2,m3,m4);
     
      m5.subtract(m1,m2);
    }
}
