# 1. Start with Java 8 and Maven
FROM maven:3.8.5-openjdk-8

# 2. Set the working directory
WORKDIR /app

# 3. Copy project files
COPY . .

# 4. Build the Maven project and skip tests
RUN mvn clean install -DskipTests

# 5. Start the application with the November Render PostgreSQL database
CMD java -Xmx350m \
    -Dserver.port=${PORT} \
    -jar target/client-relation-manager-1.0.0.jar \
    --spring.datasource.url=jdbc:postgresql://dpg-dc0mqqp42hec73bt9nsg-a/crmdbnov \
    --spring.datasource.username=crmdbnov_user \
    --spring.datasource.password=Jka8y8h2H0gs8NkzoOpc2UNPWlpqLA5R \
    --spring.jpa.hibernate.ddl-auto=update
    
