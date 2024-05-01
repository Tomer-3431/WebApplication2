using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2.AppStart
{
    public class Helper2
    {
        public static String fixDateFormatGet(string date)
        {
            string year = date.Substring(6, 4);
            string day = date.Substring(0, 2);
            string month = date.Substring(3, 2);

            return year + "-" + month + "-" + day;
        }

        public static string[] selectGender(byte selected)
        {
            switch (selected)
            {
                case 0:
                    return genderArray(0);

                case 1:
                    return genderArray(1);

                case 2: 
                    return genderArray(2);

                case 3:
                    return genderArray(3);

                case 4:
                    return genderArray(4);

                default:
                    return genderArray(0);
            }
        }

        public static string[] genderArray(int num)
        {
            string[] arr = new string[5];
            arr[num] = "selected";

            return arr;
        }

        public static string fixAddress(string address)
        {
            return address.Replace(' ', '_');
        }
    }
}