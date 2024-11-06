class Book {
  String title;
  String author;
  int publicationYear;
  int quantity;
  double rating;

  Book(this.title, this.author, this.publicationYear, this.quantity, {this.rating = 0.0});

  @override
  String toString() {
    return '$title by $author, published in $publicationYear';
  }
}

class User {
  String name;
  int membershipNumber;
  List<Book> borrowedBooks = [];

  User(this.name, this.membershipNumber);

  void borrowBook(Book book) {
    if (book.quantity > 0) {
      borrowedBooks.add(book);
      book.quantity--;
      print('You have borrowed: $book');
    } else {
      print('Book is out of stock');
    }
  }

  void returnBook(Book book) {
    borrowedBooks.remove(book);
    book.quantity++;
    print('You have returned: $book');
  }
}

class PremiumUser extends User {
  int discountPercentage;

  PremiumUser(String name, int membershipNumber, this.discountPercentage)
      : super(name, membershipNumber);
}

abstract class LibraryOperations {
  void addBook(Book book);
  void addUser(User user);
  void search(String query);
}

class Library implements LibraryOperations {
  List<Book> books = [];
  List<User> users = [];

  void addBook(Book book) {
    books.add(book);
  }

  void addUser(User user) {
    users.add(user);
  }

  void search(String query) {
    for (var book in books) {
      if (book.title.contains(query) ||
          book.author.contains(query) ||
          book.publicationYear.toString().contains(query)) {
        print('Book found: $book');
      }
    }
  }
}

void main() {
  var book1 = Book('The Lord of the Rings', 'J.R.R. Tolkien', 1954, 5);
  var book2 = Book('The Hitchhiker\'s Guide to the Galaxy', 'Douglas Adams', 1979, 3);

  var user1 = User('Alice', 12345);
  var premiumUser = PremiumUser('Bob', 54321, 10);

  var library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.addUser(user1);
  library.addUser(premiumUser);

  library.search('Lord');

  premiumUser.borrowBook(book1);
}
