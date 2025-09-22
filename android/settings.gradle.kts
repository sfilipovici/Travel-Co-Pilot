pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
    val localProps = java.util.Properties().apply {
        val f = java.io.File(settingsDir, "local.properties")
        if (f.exists()) f.reader(Charsets.UTF_8).use { load(it) }
    }
    val flutterSdkPath = localProps.getProperty("flutter.sdk")
        ?: error("flutter.sdk not set in local.properties")
    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")
}



plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.6.1" apply false   // if this fails, use 8.6.1
    id("org.jetbrains.kotlin.android") version "2.1.0" apply false
}

include(":app")
