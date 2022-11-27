package com.tsys.eklavya.database;

public class Queries {
public static final String addUser="insert into custinfo (name,userpin,cardnumber,thumb,cardtype) values(?,?,?,?,?)";
public static final String addTransactions="insert into transactions (amount,userName,cardtype)values(?,?,?)";
public static final String getTransactions="select * from transactions";
}
