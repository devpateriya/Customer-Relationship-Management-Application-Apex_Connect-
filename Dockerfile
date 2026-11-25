# 1. Start with a pre-built environment that has Java 8 and Maven
FROM maven:3.8.5-openjdk-8

# 2. Set the working directory
WORKDIR /app

# 3. Copy all of your project files
COPY . .

# 4. Run the Maven build command and skip the tests
RUN mvn clean install -DskipTests

# 5. Updated command for the November Database Instance
CMD java -Xmx350m -jar target/client-relation-manager-1.0.0.jar \
    -Dserver.port=${PORT} \
    --spring.datasource.url=jdbc:postgresql://dpg-dc0mqqp42hec73bt9nsg-a/crmdbnov \
    --spring.datasource.username=crmdbnov_user \
    --spring.datasource.password=Jka8y8h2H0gs8NkzoOpc2UNPWlpqLA5R \
    --spring.jpa.hibernate.ddl-auto=create

    
