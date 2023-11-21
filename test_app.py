import unittest
from unittest.mock import patch
from io import StringIO
import app

class Testing(unittest.TestCase):
    def testGameWin(self):
        x = app.game([6,3,1,2,2])
        self.assertTrue(x)

    def testGameLose(self):
        x = app.game([6,3,1,2])
        self.assertFalse(x)

    def testGameInvalidOptions(self):
        x = app.game([4,7,3,1,2])
        self.assertFalse(x)

    def testGameInvalidOptionsTwo(self):
        x = app.game([4,4,0,1,2])
        self.assertFalse(x)


if __name__ == '__main__':
    unittest.main()
    
