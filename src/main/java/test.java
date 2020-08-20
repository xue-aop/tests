import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class test {
    public static void main(String[] args) {

        System.out.println(getRandomNumList(100000,0,500000));
    }

    public static List getRandomNumList(int nums,int start,int end){

        List list = new ArrayList();
        Random r = new Random();
        while(list.size() != nums){
            int num = r.nextInt(end-start) + start;
            if(!list.contains(num)){
                list.add(num);
            }
        }
        return list;
    }
}
