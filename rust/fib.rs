use std::env;

fn main() {

	let args: Vec<_> = env::args().collect();
    if args.len() < 1 {
        println!("Please enter a number");
		return;
    }

    let input: u32 = args[1]
                    .parse()
                    .ok()
                    .expect("Wanted a number");

	let n = fib(input);
	println!("{}", n);
}

fn fib(n: u32) -> u32 {
	if n == 0 || n == 1 {
		return 1;
	}
	else {
		return fib(n-1) + fib(n-2);
	}
}
