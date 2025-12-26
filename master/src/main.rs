use tokio::io::{AsyncReadExt, AsyncWriteExt};
use tokio::net::{TcpListener, TcpStream};

#[tokio::main]
async fn main() {
    let listener = TcpListener::bind("127.0.0.1:8080").await.unwrap();
    println!("Server started on 127.0.0.1:8080");
    loop {
        let (stream, _) = listener.accept().await.unwrap();
        tokio::spawn(handle_client(stream));
    }
}

async fn handle_client(mut stream: TcpStream) {
    let mut input_buffer = [0; 1024];
    stream.read(&mut input_buffer).await.unwrap();
    let response = "hello";
    stream.write(response.as_bytes()).await.unwrap();
}
