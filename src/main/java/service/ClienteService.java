package service;

import java.util.ArrayList;
import java.util.List;

import model.Cliente;

public class ClienteService {
	
	private static List<Cliente> lista = new ArrayList<>();
	
	public void cadastrar(Cliente cliente) {
		lista.add(cliente);
	}
	
	public void salvar(int indice, Cliente cliente) {
		if(indice!=-1) {
			lista.set(indice,cliente);
			
		}
		else {
			lista.add(cliente);
		}
		
	}
	
	public List<Cliente> getTodosClientes(){
		return lista;
	}
	
	public void excluir(int indice) {
		lista.remove(indice);
		
	}
	
	public Cliente buscarPorIndice(int indice) {
		return lista.get(indice);
		
	}

}
