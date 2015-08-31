package gov.esm.assistor;

import java.util.HashSet;
import java.util.List;

public class ListUtils {
	
	public static void removeDuplicate(List list) {
	      HashSet h = new HashSet(list);
	      list.clear();
	      list.addAll(h);
	      System.out.println(list);
	} 

}
