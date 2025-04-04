To use this make changes in the
/home/USER/.pub-cache/hosted/pub.dev/wear-1.1.0/android/build.gradle

use this code: 
```
group 'com.mjohnsullivan.flutterwear.wear'
version '1.0-SNAPSHOT'

buildscript {
	ext.kotlin_version = '1.7.10' //make sure that this is the latest stable version
	repositories {
		google()
		mavenCentral()
	}

	dependencies {
		classpath 'com.android.tools.build:gradle:4.1.0'
		classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
	}
}

rootProject.allprojects {
	repositories {
		google()
		mavenCentral()
	}
}

apply plugin: 'com.android.library'
apply plugin: 'kotlin-android'
//apply plugin: 'kotlin-android-extensions'

android {
	compileSdkVersion 31

	sourceSets {
		main.java.srcDirs += 'src/main/kotlin'
	}
	defaultConfig {
		minSdkVersion 23
	}
	lintOptions {
		disable 'InvalidPackage'
	}
}

dependencies {
	//implementation "androidx.core:core-ktx:+"
	implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
	implementation 'androidx.wear:wear:1.2.0'
	implementation 'com.google.android.support:wearable:2.8.1'
	compileOnly 'com.google.android.wearable:wearable:2.8.1'

	// compileOnly files('C:\\Android\\flutter\\bin\\cache\\artifacts\\engine\\android-x64\\flutter.jar')
}

```
