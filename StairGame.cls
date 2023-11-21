public class StairsGame {
       
    // Array of integers, to simulate the ladder game interface, the positions with '0' are the empty boxes, 
    // the positions where the first element is '-1' represent the snakes and the position to which the player
    // should be sent , on the other hand, the positions where the first element is '1', 
    // represent the stairs and the second element represents the position to which the player would be sent.
    private static List<List<Integer>> stair = new List<List<Integer>>{
        // First row
        new List<Integer>{0},
        new List<Integer>{0},
        new List<Integer>{1,10},
        new List<Integer>{0},
        new List<Integer>{0},
        // Second row
        new List<Integer>{1,16},
        new List<Integer>{0},
        new List<Integer>{0},
        new List<Integer>{1,17},
        new List<Integer>{1,11},
        // Third row
        new List<Integer>{0},
        new List<Integer>{0},
        new List<Integer>{0},
        new List<Integer>{-1,3},
        new List<Integer>{0},
        // Fourth row
        new List<Integer>{0},
        new List<Integer>{0},
        new List<Integer>{0},
        new List<Integer>{-1,7},
        new List<Integer>{0},
        // Fifth row
        new List<Integer>{0},
        new List<Integer>{-1,20},
        new List<Integer>{0},
        new List<Integer>{-1,15},
        new List<Integer>{0}
    };
   
     // The PlayGame method receives an array of integers (which are the points the player gets).
	 public static Boolean PlayGame(Integer[] a) {
         
         // Variable isWim defines whether the player wins the game or not.
         Boolean isWin = False;
         // Variable pos initializes the initial position of the player on the table (0).
         Integer pos = 0;
         // It is iterated according to the number of points that the player obtained, 
         // if in the given throws he got 6,3,1,2 and 2, it will be iterated 5 times.
         for(integer x:a){
             
             if(x <1 || x > 6){
                 isWin = False;
                 break;
             }else{
                 
             // Here is saved the current position + the points obtained in attempt n.
             pos+=x;
             // It is validated that if the player's position is greater than or equal to 25, 
             // they win the game and the variable isWin is True.
             if(pos >= 25){
                 isWin = True;
             }
             // It is validated if the value of the player's position on the ladder is '1', 
             // it is because the square is a ladder, so it should be 'raised' to the top of the ladder.
             if(stair[pos-1][0] == 1){
            	pos = stair[pos-1][1] + 1;
             }
             // It is validated if the value of the player's position on the ladder is '-1', 
             // it is because the square is a snake, so he must 'lower' it to the tail of the snake.
             else if(stair[pos-1][0] == -1){
                pos = stair[pos-1][1] + 1; 
             }            
             }
             
         }
         // returns the value of the isWin variable.
         return isWin;
 
         
    }
}