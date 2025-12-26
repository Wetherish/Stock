use tokio::{io::AsyncReadExt, io::AsyncWriteExt, net::TcpStream};

#[tokio::main]
async fn main() {
    let mut stream = TcpStream::connect("127.0.0.1:8080")
        .await
        .expect("Failed to connect to server");
    stream.write("hello".as_bytes()).await.unwrap();
    let mut input_buffer = [0; 1024];
    stream.read(&mut input_buffer).await.unwrap();
    println!("{}", String::from_utf8_lossy(&input_buffer));
}
