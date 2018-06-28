**Initial setup**:
Create a maven project using IntelliJ

_Pom should look like below:_

                    <project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                             xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
                        <modelVersion>4.0.0</modelVersion>

                        <groupId>com.satyank</groupId>
                        <artifactId>KarateDemo</artifactId>
                        <version>1.0-SNAPSHOT</version>
                        <packaging>jar</packaging>

                        <properties>
                            <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
                            <java.version>1.8</java.version>
                            <maven.compiler.version>3.6.0</maven.compiler.version>
                        </properties>

                        <dependencies>
                            <dependency>
                                <groupId>com.intuit.karate</groupId>
                                <artifactId>karate-junit4</artifactId>
                                <version>0.7.0.1</version>
                                <scope>test</scope>
                            </dependency>
                            <dependency>
                                <groupId>com.intuit.karate</groupId>
                                <artifactId>karate-apache</artifactId>
                                <version>0.7.0</version>
                                <scope>test</scope>
                            </dependency>
                            <dependency>
                                <groupId>net.masterthought</groupId>
                                <artifactId>cucumber-reporting</artifactId>
                                <version>3.8.0</version>
                                <scope>test</scope>
                            </dependency>
                        </dependencies>

                        <build>
                            <testResources>
                                <testResource>
                                    <directory>src/test/java</directory>
                                    <excludes>
                                        <exclude>**/*.java</exclude>
                                    </excludes>
                                </testResource>
                            </testResources>
                            <plugins>
                                <plugin>
                                    <groupId>org.apache.maven.plugins</groupId>
                                    <artifactId>maven-compiler-plugin</artifactId>
                                    <version>${maven.compiler.version}</version>
                                    <configuration>
                                        <encoding>UTF-8</encoding>
                                        <source>${java.version}</source>
                                        <target>${java.version}</target>
                                        <compilerArgument>-Werror</compilerArgument>
                                    </configuration>
                                </plugin>
                            </plugins>
                        </build>

                    </project>

2. A sample folder sturcture is downloaded alongwith the necessary dependencies


3. Create your sample test in the path C:\Users\p7105756\IdeaProjects\KarateDemo\src\test\java\examples

4. Create folder structure within this directory as required (e.g. users and swapi)