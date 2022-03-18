package jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

/**
 * Data Access Object.
 */
public class UsuarioDao {

	
	//"usuario" é o nome da unidade de persistência no "persistence.xml".
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("usuario");

	public static void cadastrar(String nome, String login, String senha) {
		// Obter "conexão".
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		
		Usuario pesq = em.find(Usuario.class, login);
		
		if (pesq == null) {
			
			pesq = new Usuario();
			pesq.setLogin("QWsdafsFAAsdsdafdteerbgDFAqwsAASdasdqweg");
			pesq.setSenha("QWsdafsFAAsdsdafdteerbgDFAqwsAASdasdqweg");
			pesq.setTipo("");
			
		}
		if(login.equals(pesq.getLogin())){
			
		}else {

		Usuario usuario = new Usuario();
		usuario.setNome(nome);
		usuario.setSenha(senha);
		usuario.setLogin(login);
		usuario.setTipo("padrao");

		// Grava o objeto no banco de dados.
		em.persist(usuario);
		em.getTransaction().commit();
		em.close();
		}
	}
	public static String PesquisarLogin(String login, String senha) {
		
		String resultado = "";
		
		try {

			EntityManager em = emf.createEntityManager();

			Usuario pesq = em.find(Usuario.class, login);
			
			

			if (pesq == null) {
				
				pesq = new Usuario();
				pesq.setLogin("QWsdafsFAAsdsdafdteerbgDFAqwsAASdasdqweg");
				pesq.setSenha("QWsdafsFAAsdsdafdteerbgDFAqwsAASdasdqweg");
				pesq.setTipo("");
				
			}
			if(login.equals(pesq.getLogin()) && senha.equals(pesq.getSenha())){
				
				if (login.equals("admin")) {
					
					pesq.setTipo("adm");
					
				}
				resultado = pesq.getTipo() == null ? "padrao" : pesq.getTipo();
				System.out.println(resultado);
				return resultado;	
			}
			
			}finally {}
		
		return resultado;
		}
		
	public static void AlterarSenha (String login, String novasenha) {
		// Obter "conexão".
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();

		Usuario usuario = em.find(Usuario.class, login);
		usuario.setSenha(novasenha);

		// Grava o objeto no banco de dados.
		em.merge(usuario);
		em.getTransaction().commit();
		em.close();
	}

	public static void excluir(String login) {
		
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();

		Usuario usuario = em.find(Usuario.class, login);

		// Grava o objeto no banco de dados.
		em.remove(usuario);
		em.getTransaction().commit();
		em.close();
	}
	public static void AlterarTipo (String login, String tipo) {
		// Obter "conexão".
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();

		Usuario usuario = em.find(Usuario.class, login);
		usuario.setTipo(tipo);

		// Grava o objeto no banco de dados.
		em.merge(usuario);
		em.getTransaction().commit();
		em.close();
	}

	public static List<Usuario> listar() {
		EntityManager em = emf.createEntityManager();
		//Não é SQL! É JPQL.
		String jpql = "from Usuario";
		TypedQuery<Usuario> query = em.createQuery(jpql, Usuario.class);
		List<Usuario> result = query.getResultList();
		em.close();
		return result;
	}
}
