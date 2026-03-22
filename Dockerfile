# 1. Start with a pre-built environment that has Java 8 and Maven
FROM maven:3.8.5-openjdk-8

# 2. Set the working directory
WORKDIR /app

# 3. Copy all of your project files
COPY . .

# 4. Run the Maven build command and skip the tests
RUN mvn clean install -DskipTests

# 5. Updated command for the March Database
# Note: Changed URL, Username, Password, and ensured ddl-auto is set to 'create' for the first run.
CMD java -Xmx350m -jar target/client-relation-manager-1.0.0.jar -Dserver.port=${PORT} --spring.datasource.url=jdbc:postgresql://dpg-d6tvdfndiees73d7apug-a/apex_db_march --spring.datasource.username=apex_db_march_user --spring.datasource.password=G2RkGIdK9I2nJ8hp1Kq4lfhtK98jN3qy --spring.jpa.hibernate.ddl-auto=update
