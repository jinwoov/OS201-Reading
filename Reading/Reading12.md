# Networking, Ports, & Wi-fi

---

## Computer networking 1

- Computer networking is a group of computers that are linked to communicate each other
- Host that sends the data is called client and host that receiving the data is called servers
- Each system is connected by communication links and packets switches.
- Different link can have different rates of transmission and it is called transmission rate.
- `Packets` are sent through the network to the destination end system.
- The one that translate this packets are called routers and link-layer switches.
- End system, internet runs protocols that control he sending and receiving of information within the internet. 
- The transmission control protocol (TCP) and the internet protocol (IP) are two of the most important protocols in the internet.
- IP arrange the format of the packet that are sent and received among router and end system. 
- The Internet’s principal protocols are collectively known as TCP/IP.
- The stand of the internet was developed by Internet Engineering Task Force(IETF) into documents called request for comments (RFCs)
- Layer Architecture
    - Internet is organized as Layer Architecture
    - When google image search, server has to package with necessary headers.
    - Once it reaches the client, reverse takes place.

- Steps from server to the client
     1. When the server gets the request, it first convert it to a packet and add the `Application Layer` header
     2. This protocols include HTTP (this provides web document request and transfer), SMTP(which provides for transfer of e-mail messages), FTP(for the transfer of file between two end systems).
     3. Then, transfer layer protocol adds the necessary changes.
        - This then gets transports application-layer messages between application endpoints.
    4. The common transport layer protocol are TCP(connection-oriented service to its application), and UDP(which provides connection-less services to its application).
    5. The network-layer kicks in and move network layer packets or datagrams from one host to another.
    6. Finally, the Network Access Layer takes care of the transfer across the communication links.
    7. Once the server gets the package, the entire process takes place in reverse(bottom-up) to transform the packet back to the original image.

- Data Transformation Between End Systems
![Data transformation](https://miro.medium.com/max/1000/1*Xjta_Ion8TaUtRnRTGFuoA.png)