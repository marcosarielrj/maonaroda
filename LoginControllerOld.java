package jpa;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private String valor(HttpServletRequest req, String param, String padrao) {
		String result = req.getParameter(param);
		if (result == null) {
			result = padrao;
		}
		return result;
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		try {
			String msg = "";
			String op = valor(req, "operacao", "");
			String login = valor(req, "login", "");
			String senha = valor(req, "senha", "");
			String tipo = valor(req, "tipo", "");
			String loginencontrado = valor(req, "loginencontrado", "");
			
			String pagina = "login.jsp";
			
			System.out.println(op);
			
			if (op.equals("logar")) {
				
				
				if(UsuarioDao.PesquisarLogin(login, senha).equals("padrao")){
					
					pagina = "logado.jsp";
					msg = "Bem Vindo!";
				}else if(UsuarioDao.PesquisarLogin(login, senha).equals("adm")){
						
					pagina = "logadoadmin.jsp";
					msg = "Bem Vindo!";
				}
				
				else {
					pagina ="login.jsp";	
					msg = "Usuário ou Senha incorretos!";
				}
				
			}else if (op.equals("alterar")) {
				
				UsuarioDao.AlterarSenha(login, senha);
				msg = "Alteração realizada com sucesso.";
				
			}else if (op.equals("tipar")) {
				
				UsuarioDao.AlterarTipo(loginencontrado, tipo);
				msg = "Alteração realizada com sucesso.";
				
			}else if (op.equals("excluir")) {
				UsuarioDao.excluir(login);
				msg = "Exclusão realizada com sucesso.";
			
			}else if (op.equals("")) {
				
				msg = "";
				pagina = "login.jsp";
			} else {
				throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
			}
			
			req.setAttribute("msg", msg);
			req.setAttribute("usuarios", UsuarioDao.listar());
			
			req.getRequestDispatcher(pagina).forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace(resp.getWriter());
		}
	}
}