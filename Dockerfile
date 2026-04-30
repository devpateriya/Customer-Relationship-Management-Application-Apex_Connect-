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
    --spring.datasource.url=jdbc:postgresql://dpg-d7pf7tsvikkc73adgulg-a/apex_connect_db_0t7m \
    --spring.datasource.username=apex_connect_db_0t7m_user \
    --spring.datasource.password=ddt4EeZ2qjqUsSxEbjymtQYh90ig4lgK \
    --spring.jpa.hibernate.ddl-auto=update
