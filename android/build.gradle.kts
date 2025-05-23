buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.google.gms:google-services:4.4.0") // ou versão mais recente
        // Adicione outras dependências do classpath aqui se necessário
    }
    extra.apply {
        set("flutter.compileSdkVersion", 34)
        set("flutter.minSdkVersion", 21)
        set("flutter.targetSdkVersion", 34)
        set("flutter.ndkVersion", "25.2.9519653")
        set("flutter.versionCode", 1)
        set("flutter.versionName", "1.0.0")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.set(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.set(newSubprojectBuildDir)
    
    // Esta parte deve estar dentro do subprojects
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}