


import java.io.*;
public class ysh{
public static void main(String args[]) throw IOException
{
System.out.print("enter ip adress");
BufferedReader rd= new BufferedReader(new InputStreamReader(System.in);
String ip=rd.read.Line();
System.out.print("IP Adress"+ip);
String a= ip.substring(0,3);
int a2= Integer.parseInt(a);

String mask=null;

if (a2>0)


if (a2<=127) {
mask="255.0.0.0";
}
else if(a2>=128 && a2<=191){
mask="255.255.0.0";
}
else if(a2>=192 && a2<=223){
mask="255.255.255.0";
}
else if (a2>=224 && a2<=239){
mask ="255.0.0.0";
}
else if (a2>=240 && a2<=255){
mask="255.0.0.0";
}
}
System.out.print("subnet mask is"+ mask);

