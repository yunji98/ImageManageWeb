package kr.ac.hansung.service;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

@Service
public class Initializer {

	private static final String FIREBASE_CONFIG_PATH = "sdkproject-a65d9-firebase-adminsdk-2egbe-36fe04c9c4.json";
	
	@PostConstruct
    public void initialize() {
        try {
			
        	InputStream serviceAccount = this.getClass().getClassLoader().getResourceAsStream(FIREBASE_CONFIG_PATH);

        	FirebaseOptions options = new FirebaseOptions
        			.Builder()
        			.setCredentials(GoogleCredentials.fromStream(serviceAccount))
        			.setDatabaseUrl("https://sdkcloud-9de4f.firebaseio.com").build(); //test
        			//.setDatabaseUrl("https://sdkproject-a65d9.firebaseio.com").build();
			 
        	if (FirebaseApp.getApps().isEmpty()) {
                FirebaseApp.initializeApp(options);
            }
        	
			
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
