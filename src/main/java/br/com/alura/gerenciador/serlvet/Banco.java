package br.com.alura.gerenciador.serlvet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Empresa> lista = new ArrayList<>();
	private static Integer chaveSequencia = 1;

	static {
		Empresa empresa = new Empresa();
		empresa.setId(chaveSequencia++);
		empresa.setNome("Alura");
		Empresa empresa2 = new Empresa();
		empresa2.setId(chaveSequencia++);
		empresa2.setNome("CGDF");
		lista.add(empresa);
		lista.add(empresa2);

	}

	public void adiciona(Empresa empresa) {

		empresa.setId(Banco.chaveSequencia++);
		Banco.lista.add(empresa);
	}

	public List<Empresa> getEmpresas() {

		return Banco.lista;
	}

	public void removeEmpresa(Integer id) {

		Iterator<Empresa> it = lista.iterator();

		while (it.hasNext()) {
			Empresa emp = it.next();
			if (emp.getId() == id) {
				it.remove();
			}
		}

	}

}
