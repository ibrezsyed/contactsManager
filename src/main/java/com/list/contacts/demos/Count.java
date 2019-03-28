package com.list.contacts.demos;

import java.util.Scanner;

public class Count {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		int t = s.nextInt();
		int arr[] = new int[t];
		for (int i = 0; i < t; i++) {
			arr[i] = s.nextInt();
		}
		int numOfPairs = 0;
		for(int i =0;i<arr.length;i++) {
			int count = 0;
			
			for(int j=i+1;j<arr.length;j++) {
				if(arr[i] == arr[j]) {
					count++;
					arr[i] = 0;
					arr[j] = 0;
				}
			}
			if((count) >= 1) {
				numOfPairs++;
			}
		}
		System.out.println("Number of pairs: "+ numOfPairs);
	}
}
