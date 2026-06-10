# 1. Start with a pre-built environment that has Java 8 and Maven
FROM maven:3.8.5-openjdk-8

# 2. Set the working directory
WORKDIR /app

# 3. Copy all of your project files
COPY . .

# 4. Run the Maven build command and skip the tests
RUN mvn clean install -DskipTests

# 5. Updated command for the New Database Instance
# Note: Using Internal URL for Render-to-Render communication and ddl-auto=create for schema generation.
CMD java -Xmx350m -jar target/client-relation-manager-1.0.0.jar \
    -Dserver.port=${PORT} \
    --spring.datasource.url=jdbc:postgresql://dpg-d8kmprldt1ts73a86910-a/major_project_db_ty46 \
    --spring.datasource.username=major_project_db_ty46_user \
    --spring.datasource.password=GSruazFDmfV0J41hYXoaknL09FZEFLLq \
    --spring.jpa.hibernate.ddl-auto=create
