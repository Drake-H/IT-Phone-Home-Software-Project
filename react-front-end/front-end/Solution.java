import java.util.Hashtable;
import java.util.Arrays;

public class Solution {

    public static void main(String[] args){

        String test = "wrw blf hvv ozhg mrtsg'h vkrhlwv?";

        System.out.println(solution(test));

    }
    public static String solution(String x) {
        char[] letterArray =  {'z', 'y', 'x', 'w', 'v', 'u', 't', 's', 'r', 'q', 'p', 'o', 'n', 'm', 'l', 'k', 'j', 'i', 'h', 'g', 'f', 'e', 'd', 'c', 'b', 'a', '?', '!', '.'};
        
        char[] stringArray = new char[x.length()];
        for(int i = 0; i < x.length(); i++){
            stringArray[i] = x.charAt(i);
        }
        
        
        char[] finalString = new char[x.length()];
        
        Hashtable<Character, Integer> letterPlacement = new Hashtable<Character, Integer>();
        
        letterPlacement.put('a', 0);
        letterPlacement.put('b', 1);
        letterPlacement.put('c', 2);
        letterPlacement.put('d', 3);
        letterPlacement.put('e', 4);
        letterPlacement.put('f', 5);
        letterPlacement.put('g', 6);
        letterPlacement.put('h', 7);
        letterPlacement.put('i', 8);
        letterPlacement.put('j', 9);
        letterPlacement.put('k', 10);
        letterPlacement.put('l', 11);
        letterPlacement.put('m', 12);
        letterPlacement.put('n', 13);
        letterPlacement.put('o', 14);
        letterPlacement.put('p', 15);
        letterPlacement.put('q', 16);
        letterPlacement.put('r', 17);
        letterPlacement.put('s', 18);
        letterPlacement.put('t', 19);
        letterPlacement.put('u', 20);
        letterPlacement.put('v', 21);
        letterPlacement.put('w', 22);
        letterPlacement.put('x', 23);
        letterPlacement.put('y', 24);
        letterPlacement.put('z', 25);
        letterPlacement.put('?', 26);
        letterPlacement.put('!', 27);
        letterPlacement.put('.', 28);
        
        for(int i = 0; i < stringArray.length; i++){
            int num = letterPlacement.get(stringArray[i]);
            finalString[i] = letterArray[num];
        }
        
        String finalAnswer = String.valueOf(finalString);
        
        return finalAnswer;
        
    }
}