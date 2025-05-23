plugins {
    id("com.android.application") apply true  // Mantenha SEMPRE primeiro
    kotlin("android") apply true
    id("dev.flutter.flutter-gradle-plugin") apply true
    id("com.google.gms.google-services") apply true
}

android {
    namespace = "com.example.hortipricemobile"
    compileSdk = rootProject.extra["flutter.compileSdkVersion"].toString().toInt()

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    defaultConfig {
        applicationId = "com.example.hortipricemobile"
        minSdk = rootProject.extra["flutter.minSdkVersion"].toString().toInt()
        targetSdk = rootProject.extra["flutter.targetSdkVersion"].toString().toInt()
        versionCode = rootProject.extra["flutter.versionCode"].toString().toInt()
        versionName = rootProject.extra["flutter.versionName"].toString()
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}