//class to store the list of foodname

List newname = [];
List newprice = [];
List newimages = [];

showname() {
  return newname;
}

showprice() {
  return newprice;
}

showimages() {
  return newimages;
}

class foodhandle {
  void printall() {
    print(newname);
    print(newprice);
    print(newimages);
  }

  void addfoodname(String FOODNAME) {
    newname.add(FOODNAME.toString());
  }

  void addfoodprice(int FOODPRICE) {
    newprice.add(FOODPRICE);
  }

  void addfoodimages(String FOODIMAGES) {
    newimages.add(FOODIMAGES.toString());
  }
}
