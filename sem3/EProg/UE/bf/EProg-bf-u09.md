


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

