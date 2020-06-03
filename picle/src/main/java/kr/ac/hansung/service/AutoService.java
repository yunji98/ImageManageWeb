package kr.ac.hansung.service;

import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.QueryDocumentSnapshot;
import com.google.cloud.firestore.QuerySnapshot;
import com.google.firebase.cloud.FirestoreClient;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import kr.ac.hansung.model.Auto;

@Service
public class AutoService {

	public static final String COL_NAME = "auto";

	// 모든 Auto read 해오기
	public List<Auto> getProducts() throws InterruptedException, ExecutionException {
		try {
			List<Auto> autoList = new ArrayList<Auto>();
			List<String> tokenList = new ArrayList<String>();

			Firestore dbFirestore = FirestoreClient.getFirestore();

			ApiFuture<QuerySnapshot> future = dbFirestore.collection(COL_NAME).get();
			List<QueryDocumentSnapshot> documents = future.get().getDocuments();
			int num = 0;			
			
			for (DocumentSnapshot document : documents) {
				Auto auto = new Auto();
				auto.setAnimal((Boolean) document.get("animal"));
				auto.setBag((Boolean) document.get("bag"));
				auto.setBook((Boolean) document.get("book"));
				auto.setDevice((Boolean) document.get("device"));
				auto.setFood((Boolean) document.get("food"));
				auto.setFurniture((Boolean) document.get("furniture"));
				auto.setPerson((Boolean) document.get("person"));
				auto.setPlant((Boolean) document.get("plant"));
				auto.setSport((Boolean) document.get("sport"));
				auto.setThings((Boolean) document.get("things"));
				auto.setId(document.get("id").toString());
				auto.setTitle(document.get("title").toString());

				ApiFuture<QuerySnapshot> future2 = dbFirestore.collection("meta").whereEqualTo("title", document.get("title")).get();
				List<QueryDocumentSnapshot> documents2 = future2.get().getDocuments();

				for (DocumentSnapshot document2 : documents2) {
					tokenList.add(document2.get("token").toString());
				}
				
				auto.setToken(tokenList.get(num));
				
				autoList.add(auto);
				
				num++;
			}
			
		

			return autoList;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러");
		}

		return null;
	}

}
