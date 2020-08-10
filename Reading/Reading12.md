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


## Introduction to Networking | Network Fundamentals Part 1

- You connect all the device through the internet
- You can perform multiple tasks.
- One way is to connect through switch to connect other device
- `Patch panel` is connected to the device either by the wall or in the cabinet
- Then the `patch panel` connects to the switch
- Most home is connects directly to the switch
- Another way to connect device is through wireless
- Access point is like switch
- They agree on how the process is going to be same
    - This is called protocols
- To share the information devices needs to speak same language it is called `protocol`
- What are the two way that devices can connect to each other.
- Nodes includes devices that help control traffic flow into a network like switches and router
- Also, includes endpoint and host
- The network that is performing at home is called SoHo network.
- Switches and Hubs are different
- Hubs are really old 
- Router is used to connect to the internet
- Business has many station like this
- Internet business has many of the service providers
- When devices are connected to one network this is called LAN
- Lan can be disperse to each floor. And they can connect together at the end
- WAN (wide area network)
- Service provider can be connected with far apart devices.
