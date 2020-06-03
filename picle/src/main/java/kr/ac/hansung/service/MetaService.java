package kr.ac.hansung.service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

import org.springframework.stereotype.Service;

import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.QueryDocumentSnapshot;
import com.google.cloud.firestore.QuerySnapshot;
import com.google.firebase.cloud.FirestoreClient;

import kr.ac.hansung.model.Meta;


@Service
public class MetaService {

	public static final String COL_NAME = "meta";

	//meta service => all photo
	public List<Meta> getProducts() throws InterruptedException, ExecutionException {
		try {
			List<Meta> metaList = new ArrayList<Meta>();
			
			Firestore dbFirestore = FirestoreClient.getFirestore();
			ApiFuture<QuerySnapshot> future = dbFirestore.collection(COL_NAME).whereEqualTo("deleted", false).get();
			List<QueryDocumentSnapshot> documents = future.get().getDocuments();
			
			for(DocumentSnapshot document : documents) {
				Meta meta = new Meta();
				
				meta.setDeleted((Boolean) document.get("deleted"));
				meta.setId(document.get("id").toString());
				meta.setLatitude((double)document.get("latitude"));
				meta.setLongitude((double)document.get("longitude"));
				meta.setPath(document.get("path").toString());
				meta.setPlace(document.get("place").toString());
				meta.setTitle(document.get("title").toString());
				meta.setToken(document.get("token").toString());
			
				metaList.add(meta);
			}
			
			return metaList;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러");
		}

		return null;
	}
	
	public Meta getViewImage(String title) throws InterruptedException, ExecutionException {
		try {
			Meta meta = new Meta();
			
			Firestore dbFirestore = FirestoreClient.getFirestore();
			ApiFuture<QuerySnapshot> future = dbFirestore.collection(COL_NAME).whereEqualTo("title", title).get();
			List<QueryDocumentSnapshot> documents = future.get().getDocuments();
			
			for(DocumentSnapshot document : documents) {
				meta = new Meta();
				
				meta.setDeleted((Boolean) document.get("deleted"));
				meta.setId(document.get("id").toString());
				meta.setLatitude((double)document.get("latitude"));
				meta.setLongitude((double)document.get("longitude"));
				meta.setPath(document.get("path").toString());
				meta.setPlace(document.get("place").toString());
				meta.setTitle(title);
				meta.setToken(document.get("token").toString());
			}
			
			return meta;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러");
		}
		
		return null;
		
	}
	
	//deleted service => trash
	public List<Meta> getDeletedProducts() throws InterruptedException, ExecutionException {
		try {
			
			List<Meta> trashList = new ArrayList<Meta>();
			
			Firestore dbFirestore = FirestoreClient.getFirestore();
			ApiFuture<QuerySnapshot> future = dbFirestore.collection(COL_NAME).whereEqualTo("deleted", true).get();
			List<QueryDocumentSnapshot> documents = future.get().getDocuments();

			for(DocumentSnapshot document : documents) {
				Meta meta = new Meta();
				
				meta.setDeleted((Boolean) document.get("deleted"));
				meta.setId(document.get("id").toString());
				meta.setLatitude((double)document.get("latitude"));
				meta.setLongitude((double)document.get("longitude"));
				meta.setPath(document.get("path").toString());
				meta.setPlace(document.get("place").toString());
				meta.setTitle(document.get("title").toString());
				meta.setToken(document.get("token").toString());
			
				trashList.add(meta);
			}
			return trashList;
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러");
		}

		return null;
	}
}
