# 1. Start with a pre-built environment that has Java 8 and Maven
FROM maven:3.8.5-openjdk-8

# 2. Set the working directory
WORKDIR /app

# 3. Copy all of your project files
COPY . .

# 4. Run the Maven build command and skip the tests
RUN mvn clean install -DskipTests

# 5. Start the application with the new Render database
# Uses the internal database host for Render-to-Render communication
CMD java -Xmx350m \
    -Dserver.port=${PORT} \
    -jar target/client-relation-manager-1.0.0.jar \
    --spring.datasource.url=jdbc:postgresql://dpg-dap1hj80cd8s73bdn2jg-a/crmdbsept \
    --spring.datasource.username=crmdbsept_user \
    --spring.datasource.password=Yp0EaXQGeOTr2YdyAmBOEBynhhE609sM \
    --spring.jpa.hibernate.ddl-auto=update
