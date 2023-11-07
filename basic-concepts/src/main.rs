fn main() {
    println!("Hello, world!");
    
    println!("Please enter your name: ");

    let mut name = String::new();
    std::io::stdin().read_line(&mut name).unwrap();
    
    println!("Hello {} !", name.trim().split_whitespace().next().unwrap());
}
