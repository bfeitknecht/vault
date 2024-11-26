


#  1

valid range for fileID
`0 <= fileID < 100`

index of entry in data
`0 <= i < N`



# 2
```text
if head(fileID).readOnly then
    remove all entries on fileID with readOnly
    
else
    remove head(fileID)

return char array of popped entries' userIDs sorted in order of addTime
```


implement `head(fileID) -> int` 


# 3

find index of head and tail for each `fileID`

```java
public int[][] getQuickList() {
	boolean[] b = new boolean[100];
	
	for(Entry entry : entries){
		if(entry != null){
			b[entry.fileID] = true; 
		}
	}      
	
	int count = 0;
	for(int i = 0; i < 100; i ++){
		if(b[i]){
			count ++;
		}
	}
	
	if(count == 0){
		return null;
	}
	
	int[][] res = new int[count][3];
	count = 0;
	
	for(int i = 0; i < 100; i ++){
		if(b[i]){
			int head = Integer.MAX_VALUE;
			int headI = 0;
			int tail = 0;
			int tailI = 0;
			
			for(int j = 0; j < N; j++){
				Entry e = entries[j];
				if(e != null && e.fileID == i){
					if(e.addTime < head){
						head = e.addTime;
						headI = j;
					}
					if(e.addTime > tail){
						tail = e.addTime;
						tailI = j;
					}
				}
			}
			res[count++] = new int[]{i, headI, tailI};
		}
	}
	
	return res;
}
```
