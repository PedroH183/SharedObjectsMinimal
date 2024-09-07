public class FunctionsJNI{

	public native int MULT(int start, int end);

	static {
		// carregador da lib que contém as funções
		// remover o lib inicial para assim fazer o include das funções
		System.loadLibrary("functions");
	}

	public static void main(String[] args){
		FunctionsJNI mt = new FunctionsJNI();
		System.out.println(mt.MULT(1,1));
	}
};
