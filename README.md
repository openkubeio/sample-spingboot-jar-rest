#### **Simple  Springboot application to demonstate Java Build**
<br/>

#### Build with Maven
```
mvn clean package
```

#### Package Docker
```
docker build . -t pramodepandit/myrestapp:v1
```

#### Deploy Image
```
docker run --rm -d -p 9090:8080 --name restapp pramodepandit/myrestapp:v1
```

#### Test Application

[http://localhost:9090/](http://localhost:9090/)

