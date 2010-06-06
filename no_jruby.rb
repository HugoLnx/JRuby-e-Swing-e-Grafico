=begin
	Sobre mim...
	Nome: Hugo Roque(a.k.a HugoLnx)
	Email: hugolnx@gmail.com
	Twitter: http://www.twitter.com/hugolnx
=end

require 'java'

java_import javax.swing.JFrame
java_import javax.swing.JPanel

java_import java.awt.Color
java_import java.awt.BorderLayout
java_import java.awt.Graphics
java_import java.awt.Graphics2D
java_import java.awt.geom.Rectangle2D
java_import java.awt.geom.Line2D

class MyJPanel < JPanel
	# criação do método paint_component
	# poderiamos sobreescrever o metodo paintComponent aew mesmo
	# teriamos que trocar o nome do metodo para paintComponent
	# e apagar o alias abaixo
	# só fiz dessa maneira visando respeitar a convenção ruby =D
	def paint_component(g)
		# em ruby não faz muita diferença isso, jah q para recuperar
		# o size não tem tanta verbosidade quanto em java xD
		size = self.size
		
		# Obs.: não há necessidade de se fazer cast, pelo que eu observei,
		# o g que vem como parametro já é instancia de Graphics2D
		
		# Desenha o retangulo
		g.color = Color::RED
		rc = Rectangle2D::Double.new(10,10,size.width - 20, size.height - 20)
		g.fill rc
		
		# Desenha a linha
		g.color = Color::WHITE
		line = Line2D::Double.new(20,20,size.width,size.height)
		g.draw line
		
		# Desenha o texto "This is a test!"
		g.draw_string 'This is a test!',100,150
	end
	# alias que irá "substituir" o método paintComponent(q precisa ser sobreescrito) 
	# pelo método paint_component
	alias paintComponent paint_component
end

# Cria um frame
frame = JFrame.new
# Seta o tamanho do frame
frame.set_size(300,300)
# Seta a operação padrão para quando a janela fechar
frame.default_close_operation = JFrame::EXIT_ON_CLOSE

# Instancia o MyJPanel
mp = MyJPanel.new

# Adiciona JPanel ao Frame
frame.content_pane.add(mp,BorderLayout::CENTER)

# Mostra o frame(janela)
frame.visible = true

=begin
	Enfim, é uma faxina do capeta isso tudo, mas o swing eh assim, fazer oq xPPP
	Quem souber um modo melhor de se fazer, por favor, me mostre, meu email ta lah
	em cima, eu acho esse modo do swing trabalhar muito ruim, então estou aberto a
	sugestões. =D
	
	Espero que ajude alguém xD
=end
