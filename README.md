# Distrbuted-System-Capstone-Project
Source code for distributed capstone project


### 3 Nodes Hadoop Cluster

##### 1. clone github repository

```
git clone https://github.com/huannguyen2114/Distrbuted-System-Capstone-Project.git
```

##### 2. build image

```
./build-image.sh  
```

##### 3. create hadoop network

```
sudo docker network create --driver=bridge hadoop
```

##### 4. start container

```
cd Distrbuted-System-Capstone-Project 
sudo ./start-container.sh
```

**output:**

```
start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
root@hadoop-master:~# 
```
- start 3 containers with 1 master and 2 slaves
- you will get into the /root directory of hadoop-master container


##### 5. start hadoop

```
./start-hadoop.sh
```

**Check with jps:**
```
root@hadoop-master:~# jps
310 SecondaryNameNode
460 ResourceManager
3373 Jps
125 NameNode
```


##### 6. run matrix-multiply

```
./run-matrix-multiply.sh
```

**output**

```
input matrix M:
M,0,0,1
M,0,1,2
M,0,2,3
M,1,0,4
M,1,1,5
M,1,2,6

input matrix N:
N,0,0,10
N,0,1,11
N,1,0,20
N,1,1,22
N,2,0,30
N,2,1,33

Matrix multiplication output:
0,0,140.0
0,1,154.0
1,0,320.0
1,1,352.0
```
