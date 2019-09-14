package com.works.admin;

public class MyAdminObject {
				
		private static MyAdminObject myAdminObject = new MyAdminObject();
		private Object myObject = new Object();
		
		public static MyAdminObject getMyAdminObject() {
			return myAdminObject;
		}
		
		public MyAdminObject() {
		}

		public Object getMyObject() {
			return myObject;
		}

		public void setMyObject(Object myObject) {
			this.myObject = myObject;
		}

	}

