
class AgeCalculator
{
  // ignore: prefer_typing_uninitialized_variables
  static int? age ;
  AgeCalculator( int num )
  {
    int birth=num ;
    age = DateTime.now().year-birth;
  }
}