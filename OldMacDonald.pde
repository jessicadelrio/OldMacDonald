//your variable declarations here
	
	public void setup(){
	Farm animals = new Farm();
	animals.animalSounds();
	//System.out.println(animals.animalSounds());

}
	
	interface Animal{
		public String getSound();
		public String getType();
	}
	class Cow implements Animal{
		protected String myType;
		protected String mySound;
	
	public Cow(String type, String sound){
		myType = type;
		mySound = sound;
	}
	public Cow(){
		myType = "unknown";
		mySound = "unknown";
	}
	public String getSound(){
		return mySound; 
	}
	public String getType(){
		return myType;
	}
}
	class Chick implements Animal{

		private String myType;
		private String mySound;
		
		

	public Chick(String type, String sound1,String sound2){
		myType = type;
		int randnumber = (int)(Math.random()*2);
		if(randnumber == 0){
			mySound = sound1;
		}else{
			mySound = sound2;
		}
	}
	public Chick(){
		myType = "unknown";
		mySound = "unknown";
	
	}
	public String getSound(){
		return mySound;
		
	}
	public String getType(){
		return myType;
	}
	}
	class Pig implements Animal{
		protected String myType;
		protected String mySound;
	
	public Pig(String type, String sound){
		myType = type;
		mySound = sound;
	}
	public Pig(){
		myType = "unknown";
		mySound = "unknown";
	}
	public String getSound(){
		return mySound; 
	}
	public String getType(){
		return myType;
	}		

	}
	class Farm
	{ 
		private Animal aBunchOfAnimals [] = new Animal[3];
		public Farm(){
		aBunchOfAnimals[0] = new NamedCow("coo","Elsie","moo");
		aBunchOfAnimals[1] = new Chick("chick","cheep","cluck");
		aBunchOfAnimals[2] = new Pig("pig", "oink");
		}
		public void animalSounds(){
			for(int nI = 0; nI < aBunchOfAnimals.length; nI++){

				System.out.println(aBunchOfAnimals[nI].getType() + " goes "+ aBunchOfAnimals[nI].getSound());
			}
			System.out.println("The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName());
		}

	}
	class NamedCow extends Cow{
		protected String itsName;
		public NamedCow(String type,String itName,String sound){
			myType = type; 
			itsName = itName;
			mySound = sound;
		}
		public NamedCow(){
			itsName = "unknown";
		}
		public String getName(){
			return itsName;

		}
	}

