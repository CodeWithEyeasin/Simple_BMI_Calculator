import 'dart:ffi';
import 'dart:io';

class BMI{
  late double Height,Weight,Result;
double CalculateBMI()
{
  print("Enter Your Height In Meter :");
  Height=double.parse(stdin.readLineSync()!);
  print("Enter Your Weight In KG :");
  Weight=double.parse(stdin.readLineSync()!);
  print('-------------------------------------------------');
  Result=Weight/(Height*Height);
  print("     Your BMI Is: $Result");
  return Result;
}

void Comparison()
{
if(Result<18.5)
  {
    print("          You Are Underweight");
    print('-------------------------------------------------');
  }
else if(Result>=18.5 && Result<=24.9)
  {
    print("          Your Weight Is Normal");
    print('-------------------------------------------------');
  }
else if(Result>=25.0 && Result<=29.9)
  {
    print("          You Are Overweight");
    print('-------------------------------------------------');
  }
else if(Result>=30.0 && Result<=34.9)
  {
   print("          Your Obesity Class 1");
   print('-------------------------------------------------');
  }
else if(Result>=35.0 && Result<=39.9)
  {
    print("          Your Obesity Class 2");
    print('-------------------------------------------------');
  }
else
  {
    print("          Your Obesity Class 3");
    print('-------------------------------------------------');
  }
}

}