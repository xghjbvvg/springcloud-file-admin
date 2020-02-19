package com.company.util;

import java.util.ArrayList;
import java.util.List;

public class ListUtil {
    public static <T> List<List<T>> splitList(List<T> list, int blockSize) {
        List<List<T>> lists = new ArrayList<List<T>>();
        if(blockSize <= 1){
            lists.add(list);
            return lists;
        }
        if (list != null && blockSize > 0) {
            int listSize = list.size();
            if(listSize<=blockSize){
                lists.add(list);
                return lists;
            }
            int batchSize = listSize / blockSize;
            int remain = listSize % blockSize;
            for (int i = 0; i < batchSize; i++) {
                int fromIndex = i * blockSize;
                int toIndex = fromIndex + blockSize;
                System.out.println("fromIndex=" + fromIndex + ", toIndex=" + toIndex);
                lists.add(list.subList(fromIndex, toIndex));
            }
            if(remain>0){
                System.out.println("fromIndex=" + (listSize-remain) + ", toIndex=" + (listSize));
                lists.add(list.subList(listSize-remain, listSize));
            }
        }
        return lists;
    }
}
