void main(List<String> args) {
  const Student emre = Student(12, "ahmet");
  const Student emre2 = Student(12, "ahmet");

  if (emre2 == emre) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;
  const Student(this.id, this.isim);
}
