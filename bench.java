
public class bench {
    public static void bench() {
        long number = 0;
        long start = System.currentTimeMillis();
        for(long i = 0; i < 1000000000L; i++) number++;
        
        System.out.println(System.currentTimeMillis() - start);
        System.out.println(number);
    }
    public static void main(String[] args) {
        bench();
    }   
}

// 280 - 580ms in CompilerExplorer - Java jdk 21.0.2
// ~500ms on my machine