import crud
import unittest
import doctest

class CrudTests(unittest.TestCase):
    def test_years_list(self):
        assert crud.years_list('t3@email.com') == ['All Years', 2021, 2020]


def load_tests(loader, tests, ignore):

    tests.addTests(doctest.DocTestSuite(crud))
    tests.addTests(doctest.DocFileSuite('tests.txt'))

    return tests

if __name__ =='__main__':
    unittest.main()