@isTest
private class StairsGameTest {
	@isTest static void testGameWin() {
        Integer [] a=new Integer[]{6,3,1,2,2};
        Boolean x = StairsGame.PlayGame(a);
        System.assertEquals(True,x);
        //System.assertTrue(x);
    }
    
    @isTest static void testGameLose() {
        Integer [] a=new Integer[]{6,3,1,2};
        Boolean x = StairsGame.PlayGame(a);
        System.assertEquals(False,x);
        //System.assertTrue(x);
    }
    
     @isTest static void testGameLose2() {
        Integer [] a=new Integer[]{3,3,2,2,3,6,4,3};
        Boolean x = StairsGame.PlayGame(a);
        System.assertEquals(False,x);
        //System.assertTrue(x);
    }
    
     @isTest static void testGameWithInvalidOptions() {
        Integer [] a=new Integer[]{6,8,1,2};
        Boolean x = StairsGame.PlayGame(a);
        System.assertEquals(False,x);
        //System.assertTrue(x);
    }
     @isTest static void testGameWithInvalidOptionsTwo() {
        Integer [] a=new Integer[]{0,3,1,2};
        Boolean x = StairsGame.PlayGame(a);
        System.assertEquals(False,x);
        //System.assertTrue(x);
    }
    
    
}