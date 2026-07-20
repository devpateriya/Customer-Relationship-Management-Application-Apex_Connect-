# 1. Start with a pre-built environment that has Java 8 and Maven
FROM maven:3.8.5-openjdk-8

# 2. Set the working directory
WORKDIR /app

# 3. Copy all of your project files
COPY . .

# 4. Run the Maven build command and skip the tests
RUN mvn clean install -DskipTests

# 5. Updated command for the New Database Instance
# Note: Uses the internal database host for Render-to-Render communication
CMD java -Xmx350m -jar target/client-relation-manager-1.0.0.jar \
    -Dserver.port=${PORT} \
    --spring.datasource.url=jdbc:postgresql://dpg-d9dkh0beo5us73bset00-a/crmdb_0223 \
    --spring.datasource.username=crmdb_0223_user \
    --spring.datasource.password=tdkCtEPUaXCRArpVBN8Xz02BQlKdNlF1 \
    --spring.jpa.hibernate.ddl-auto=update
