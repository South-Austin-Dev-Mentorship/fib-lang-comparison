class Fib {

    public static int fib(int n) {
        if (n == 0 || n == 1) {
            return 1;
        }
        else {
            return Fib.fib(n-1) + Fib.fib(n-2);
        }
    }

	public static void main(String[] args) {
        String a = args[0];
        int i = Integer.parseInt(a);
        System.out.println(Fib.fib(i));
	}
}

