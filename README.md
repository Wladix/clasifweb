Comparar el clone y agregar para java 1.7 estos valores en las lineas que sean diferentes

<plugin>
    <groupId>org.eclipse.jetty</groupId>
    <artifactId>jetty-maven-plugin</artifactId>
    <version>9.2.21.v20170120</version>
        <configuration>
            <httpConnector>
                <port>9999</port>
            </httpConnector>
        </configuration>
</plugin>
            
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
        <configuration>
            <source>1.7</source>
            <target>1.7</target>
        </configuration>
</plugin>

<dependency>
    <groupId>javax.servlet.jsp</groupId>
    <artifactId>jsp-api</artifactId>
    <version>2.1</version>
    <scope>provided</scope>
</dependency>