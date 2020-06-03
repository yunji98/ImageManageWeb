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

import kr.ac.hansung.model.Remove;


@Service
public class RemoveService {

	public static final String COL_NAME = "remove";

	// 어두운 사진 추천
	public List<Remove> getDarkProducts() throws InterruptedException, ExecutionException {
		try {
			List<Remove> darkList = new ArrayList<Remove>();
			List<String> tokenList = new ArrayList<String>();

			Firestore dbFirestore = FirestoreClient.getFirestore();

			ApiFuture<QuerySnapshot> future = dbFirestore.collection(COL_NAME).whereEqualTo("darked", true).get();
			List<QueryDocumentSnapshot> documents = future.get().getDocuments();
			int num = 0;

			for (DocumentSnapshot document : documents) {
				Remove remove = new Remove();
				remove.setDarked((Boolean) document.get("darked"));
				remove.setId(document.get("id").toString());
				remove.setRemove((Boolean) document.get("remove"));
				remove.setScreenshot((Boolean) document.get("screenshot"));
				remove.setShaken((Boolean) document.get("shaken"));
				remove.setSimilar((Boolean) document.get("similar"));
				remove.setTitle(document.get("title").toString());

				ApiFuture<QuerySnapshot> future2 = dbFirestore.collection("meta")
						.whereEqualTo("title", document.get("title")).get();
				List<QueryDocumentSnapshot> documents2 = future2.get().getDocuments();

				for (DocumentSnapshot document2 : documents2) {
					tokenList.add(document2.get("token").toString());
				}

				remove.setToken(tokenList.get(num));

				darkList.add(remove);

				num++;

			}
			return darkList;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러");
		}

		return null;
	}

	// 흔들린 사진 추천
	public List<Remove> getShakenProducts() throws InterruptedException, ExecutionException {
		try {
			List<Remove> shakenList = new ArrayList<Remove>();
			List<String> tokenList = new ArrayList<String>();

			Firestore dbFirestore = FirestoreClient.getFirestore();

			ApiFuture<QuerySnapshot> future = dbFirestore.collection(COL_NAME).whereEqualTo("shaken", true).get();
			List<QueryDocumentSnapshot> documents = future.get().getDocuments();
			int num = 0;

			for (DocumentSnapshot document : documents) {
				Remove remove = new Remove();
				remove.setDarked((Boolean) document.get("darked"));
				remove.setId(document.get("id").toString());
				remove.setRemove((Boolean) document.get("remove"));
				remove.setScreenshot((Boolean) document.get("screenshot"));
				remove.setShaken((Boolean) document.get("shaken"));
				remove.setSimilar((Boolean) document.get("similar"));
				remove.setTitle(document.get("title").toString());

				ApiFuture<QuerySnapshot> future2 = dbFirestore.collection("meta")
						.whereEqualTo("title", document.get("title")).get();
				List<QueryDocumentSnapshot> documents2 = future2.get().getDocuments();

				for (DocumentSnapshot document2 : documents2) {
					tokenList.add(document2.get("token").toString());
				}

				remove.setToken(tokenList.get(num));

				shakenList.add(remove);

				num++;

			}
			return shakenList;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러");
		}

		return null;
	}

	// 스크린샷 추천
	public List<Remove> getScreenshotProducts() throws InterruptedException, ExecutionException {
		try {
			List<Remove> screenshotList = new ArrayList<Remove>();
			List<String> tokenList = new ArrayList<String>();

			Firestore dbFirestore = FirestoreClient.getFirestore();

			ApiFuture<QuerySnapshot> future = dbFirestore.collection(COL_NAME).whereEqualTo("screenshot", true).get();
			List<QueryDocumentSnapshot> documents = future.get().getDocuments();
			int num = 0;

			for (DocumentSnapshot document : documents) {
				Remove remove = new Remove();
				remove.setDarked((Boolean) document.get("darked"));
				remove.setId(document.get("id").toString());
				remove.setRemove((Boolean) document.get("remove"));
				remove.setScreenshot((Boolean) document.get("screenshot"));
				remove.setShaken((Boolean) document.get("shaken"));
				remove.setSimilar((Boolean) document.get("similar"));
				remove.setTitle(document.get("title").toString());

				ApiFuture<QuerySnapshot> future2 = dbFirestore.collection("meta")
						.whereEqualTo("title", document.get("title")).get();
				List<QueryDocumentSnapshot> documents2 = future2.get().getDocuments();

				for (DocumentSnapshot document2 : documents2) {
					tokenList.add(document2.get("token").toString());
				}

				remove.setToken(tokenList.get(num));

				screenshotList.add(remove);

				num++;

			}
			return screenshotList;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러");
		}

		return null;
	}

	// 유사한 사진 추천
	public List<Remove> getSimiliarProducts() throws InterruptedException, ExecutionException {
		try {
			List<Remove> similarList = new ArrayList<Remove>();
			List<String> tokenList = new ArrayList<String>();

			Firestore dbFirestore = FirestoreClient.getFirestore();

			ApiFuture<QuerySnapshot> future = dbFirestore.collection(COL_NAME).whereEqualTo("similar", true).get();
			List<QueryDocumentSnapshot> documents = future.get().getDocuments();
			int num = 0;

			for (DocumentSnapshot document : documents) {
				Remove remove = new Remove();
				remove.setDarked((Boolean) document.get("darked"));
				remove.setId(document.get("id").toString());
				remove.setRemove((Boolean) document.get("remove"));
				remove.setScreenshot((Boolean) document.get("screenshot"));
				remove.setShaken((Boolean) document.get("shaken"));
				remove.setSimilar((Boolean) document.get("similar"));
				remove.setTitle(document.get("title").toString());

				ApiFuture<QuerySnapshot> future2 = dbFirestore.collection("meta")
						.whereEqualTo("title", document.get("title")).get();
				List<QueryDocumentSnapshot> documents2 = future2.get().getDocuments();

				for (DocumentSnapshot document2 : documents2) {
					tokenList.add(document2.get("token").toString());
				}

				remove.setToken(tokenList.get(num));

				similarList.add(remove);

				num++;

			}
			return similarList;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러");
		}

		return null;
	}
}