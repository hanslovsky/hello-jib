plugins {
    id("org.jetbrains.kotlin.jvm") version "1.3.70"
    application
    id ("com.google.cloud.tools.jib") version "2.2.0"
}

repositories {
    jcenter()
}

dependencies {
    // Align versions of all Kotlin components
    implementation(platform("org.jetbrains.kotlin:kotlin-bom"))

    // Use the Kotlin JDK 8 standard library.
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8")
}

application {
    // Define the main class for the application.
    mainClassName = "hello.jib.App"
}
