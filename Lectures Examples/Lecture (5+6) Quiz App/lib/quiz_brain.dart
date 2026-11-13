
import 'question.dart';


class QuizBrain {
  int _questionumber=0;

  List<Question> _questionbank = [

    Question(q: 'The black box in a plane is black',a: false),
    Question(q: 'Marrakesh is the capital of Morocco',a: false),
    Question(q: 'An octopus has three hearts',a: true),
    Question(q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', a: false),
    Question(q: 'The total surface area of two human lungs is approximately 70 square metres.',a:true),
    Question(q:'Google was originally called \"Backrub\".', a:true),
  ];





  void nextQuestion()
  {

    if (_questionumber < _questionbank.length)

    {
      _questionumber++;
    }

  }








  //////////////  🚨🚨🚨  🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 //////////////////

// ---

//  ## 🚨 Important: New Material Alert 🚨

//  **Please note:** This section contains material that we have not covered in class. It is essential for all students to review this section carefully and ensure all concepts and instructions are clearly understood.

 // **Action Required:** Check if there are any additional questions or clarifications required regarding this new part.

 // --- ( check if there is more Questions  )

  bool checknext()
  {
    if(_questionumber < _questionbank.length-1)
    {
      // Return true if there are additional questions.
      return true;
    }
    else
    {

      return false;
    }


  }
  ////////////////////////////////////////////////////////////////////////



  //////////////  🚨🚨🚨  🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 //////////////////

// ---

//  ## 🚨 Important: New Material Alert 🚨

//  **Please note:** This section contains material that we have not covered in class. It is essential for all students to review this section carefully and ensure all concepts and instructions are clearly understood.

  // **Action Required:** Check if there are any additional questions or clarifications required regarding this new part.

  // --- ( Reset Counter )
  void resetnumber()
  {

    _questionumber =0;
  }
  //////////////////////////////////////////////////////////////////////////////









  String getquestiontext()
  {
    return _questionbank[_questionumber].questioeText;
  }






  bool getquestionAnswer()
  {
    return _questionbank[_questionumber].questionAnswer;
  }







}