# 1. Start with a pre-built environment that has Java 8 and Maven
FROM maven:3.8.5-openjdk-8

# 2. Set the working directory
WORKDIR /app

# 3. Copy all of your project files
COPY . .

# 4. Run the Maven build command and skip the tests
RUN mvn clean install -DskipTests

# 5. The CLEAN start command.
# We removed the hardcoded DB credentials and flags.
# The app will now pull everything from your Render "Environment" tab.
CMD ["sh", "-c", "java -Xmx350m -Dserver.port=${PORT} -jar target/client-relation-manager-1.0.0.jar"]
