﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Lab3_Template.DTL
{
    public class Order
    {
        private int orderID;

        public int OrderID
        {
            get { return orderID; }
            set { orderID = value; }
        }
        private DateTime orderDate;

        public DateTime OrderDate
        {
            get { return orderDate; }
            set { orderDate = value; }
        }
        private String userName;

        public String UserName
        {
            get { return userName; }
            set { userName = value; }
        }
        private String firstName;

        public String FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }
        private String lastName;

        public String LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }
        private String address;

        public String Address
        {
            get { return address; }
            set { address = value; }
        }
        private String city;

        public String City
        {
            get { return city; }
            set { city = value; }
        }
        private String state;

        public String State
        {
            get { return state; }
            set { state = value; }
        }
        private String country;

        public String Country
        {
            get { return country; }
            set { country = value; }
        }
        private String phone;

        public String Phone
        {
            get { return phone; }
            set { phone = value; }
        }
        private String email;

        public String Email
        {
            get { return email; }
            set { email = value; }
        }
        private double total;

        public double Total
        {
            get { return total; }
            set { total = value; }
        }

        public string PromoCode { get => promoCode; set => promoCode = value; }

        private string promoCode;
  

    }
}
