# Cloud Virtualization with AWS

---

## Importance of Virtualization in the Amazon EC2 Cloud
- Virtualization started with VMWare in 1999 when it was introduced to cheap intel hardware.
- IaaS is delivering virtualized computer infrastructure in the form of a service.
- AMI is another virtual appliance. 
- Responsible for creating on demand virtual machine
- EC2 instance are use the storage through either ephemeral (temporary or lastic block storage snapshots stored in Amazon S3)

## AWS cloud practitioner essential

### Amazon Elastic Cloud Compute(EC2)

- What is Ec2?
    - elastic compute cloud
    - elastic, you can increase and decrease automatically depending on current demands
    - instances are pay as you go
    - only pay for when its running
1. Create a EC2 instance 
2. Save ssh key
3. Go to puttygen to create putty key
4. access by entering name of the server and @address

## Privileged Access Cloud Security for Dummies
- Cloud is basically hosting to another person's server, and use those resources when required.
- IaaS(Infrastructure as a service): Typically computing, networking, and storage that allows you to run your own platform. Usually like operating system, application and databases for your data
- Pass(platform as a service): Platform dependencies such as os, programming langues, databases and webservers that run you application
- Software as a service(SaaS); Typically application or on-demand software that you subscribe to and use without worrying about the underlying dependencies
- Security software as a service and managed security as a service providers: cloud solution that help organization with migrating to the cloud
- Example of the car
    - On-premises security is like parking your car in your a garage
    - Anyone inside the garage has access to the car.
    - Securing a cloud environment, garage door method doesn't work. 
        - Access control to the car: privileged access management
        - The ability to see inside the car (encryption)
        - Indentity verification of the person accessing the car(multi factor authentication)
- The benefit of having cloud solution
    1. High availability
    2. Pay as you go
    3. Reduced time spent on maintenance
    4. Hitting the ground running
    5. Highly secure
- The security challenges with Cloud is 
    1. accountability and risk
    2. identity federation
    3. Regulation and compliance
    4. Business continuity and resilience
    5. Privacy and third party usage
    6. Service and data integration
    7. Multi tenancy and physical security
    8. Incident analysis and security
    9. Infrastructure security