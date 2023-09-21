plugins {
    kotlin("multiplatform") version "1.9.10"
    kotlin("native.cocoapods") version "1.9.10"
    id("com.android.library") version "8.1.0"
    id("co.touchlab.faktory.kmmbridge") version "999"
    `maven-publish`
}

group = "co.touchlab"
version = "1.0"

repositories {
    mavenLocal()
    google()
    mavenCentral()
}

kotlin {
    android()

    iosX64()
    iosArm64()
    iosSimulatorArm64()

    sourceSets {
        val commonMain by getting
        val commonTest by getting {
            dependencies {
                implementation(kotlin("test"))
            }
        }
        val androidUnitTest by getting {
            dependencies {
                implementation("junit:junit:4.13.2")
            }
        }
    }

    cocoapods {
        homepage = "https://www.example.com"
        summary = "Test"
        ios.deploymentTarget = "13"
        framework {
            isStatic = false
        }
    }
}

android {
    namespace = "co.touchlab.faktory.kmmbridge.test"
    compileSdk = 33
    defaultConfig {
        minSdk = 21
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
}

kmmbridge {
    versionPrefix.set("1.4")
    spm("../")
    cocoapods("git@github.com:Touchlab/Podspecs.git")
    gitTagVersions()
    mavenPublishArtifacts()
}

addGithubPackagesRepository()
