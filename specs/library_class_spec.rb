require("minitest/autorun")
require("minitest/rg")
require_relative("../library_class")

class TestLibrary < Minitest::Test

  def test_get_books()
    library = Library.new([{
      title: "Harry Potter and the Philosophers Stone",
      rental_details: {
        student_name: "Robert",
        date: "14/01/18"
      }
      }, {
        title: "Lord of the Rings",
        rental_details: {
          student_name: "John",
          date: "12/01/18"
        }
      }
      ])
      expected = [{
        title: "Harry Potter and the Philosophers Stone",
        rental_details: {
          student_name: "Robert",
          date: "14/01/18"
        }
        }, {
          title: "Lord of the Rings",
          rental_details: {
            student_name: "John",
            date: "12/01/18"
          }
        }
        ]
        assert_equal(expected, library.get_books())
    end

    def test_get_book_info()
      library = library = Library.new([{
        title: "Harry Potter and the Philosophers Stone",
        rental_details: {
          student_name: "Robert",
          date: "14/01/18"
        }
        }, {
          title: "Lord of the Rings",
          rental_details: {
            student_name: "John",
            date: "12/01/18"
          }
        }
        ])
        expected = {
          title: "Harry Potter and the Philosophers Stone",
          rental_details: {
            student_name: "Robert",
            date: "14/01/18"
          }
          }
        assert_equal(expected, library.get_book_info("Harry Potter and the Philosophers Stone"))
      end

      def test_get_rental_info()
        library = Library.new([{
          title: "Harry Potter and the Philosophers Stone",
          rental_details: {
            student_name: "Robert",
            date: "14/01/18"
          }
          }, {
            title: "Lord of the Rings",
            rental_details: {
              student_name: "John",
              date: "12/01/18"
            }
          }
          ])
          expected = {
            student_name: "John",
            date: "12/01/18"
          }
          assert_equal(expected, library.get_rental_info("Lord of the Rings"))
      end

      def test_add_book()
        library = Library.new([{
          title: "Harry Potter and the Philosophers Stone",
          rental_details: {
            student_name: "Robert",
            date: "14/01/18"
          }
          }, {
            title: "Lord of the Rings",
            rental_details: {
              student_name: "John",
              date: "12/01/18"
            }
          }
          ])
          expected = library.get_books.length + 1
          library.add_book({
            title: "Game of Thrones",
            rental_details: {
              student_name: "",
              date: ""
            }
            })
            assert_equal(expected, library.get_books.length())

      end

      def test_update_rental_details()
        library = Library.new([{
          title: "Harry Potter and the Philosophers Stone",
          rental_details: {
            student_name: "Robert",
            date: "14/01/18"
          }
          }, {
            title: "Lord of the Rings",
            rental_details: {
              student_name: "John",
              date: "12/01/18"
            }
          }
          ])
          expected = {
            title: "Lord of the Rings",
            rental_details: {
              student_name: "Robert",
              date: "14/01/18"
            }
          }
          library.rental_details("Lord of the Rings", "Robert", "14/01/18")
          assert_equal(expected, library.get_book_info("Lord of the Rings"))
      end



  end
