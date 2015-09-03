require 'test_helper'

class PessoasControllerTest < ActionController::TestCase
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post :create, pessoa: { agencia: @pessoa.agencia, antiguidade: @pessoa.antiguidade, ass_dispensa: @pessoa.ass_dispensa, bairro: @pessoa.bairro, banco: @pessoa.banco, cep: @pessoa.cep, cidade: @pessoa.cidade, cmt: @pessoa.cmt, cnhcat: @pessoa.cnhcat, cnhnum: @pessoa.cnhnum, cnhvalidade: @pessoa.cnhvalidade, comportamento: @pessoa.comportamento, contacorrente: @pessoa.contacorrente, cpf: @pessoa.cpf, cracha: @pessoa.cracha, cracha_id: @pessoa.cracha_id, cracha_validade: @pessoa.cracha_validade, data_nascimento: @pessoa.data_nascimento, datacadastro: @pessoa.datacadastro, email: @pessoa.email, endereco: @pessoa.endereco, escala1: @pessoa.escala1, escala: @pessoa.escala, escala_amarela: @pessoa.escala_amarela, escala_preta: @pessoa.escala_preta, escala_receber_email: @pessoa.escala_receber_email, escala_roxa: @pessoa.escala_roxa, escala_vermelha: @pessoa.escala_vermelha, especialidade_id: @pessoa.especialidade_id, esqsec_id: @pessoa.esqsec_id, estadocivil: @pessoa.estadocivil, falert: @pessoa.falert, falertesquadrao: @pessoa.falertesquadrao, filmae: @pessoa.filmae, filpai: @pessoa.filpai, fone1: @pessoa.fone1, fone2: @pessoa.fone2, fonetrab: @pessoa.fonetrab, fonetrabramal: @pessoa.fonetrabramal, funcao: @pessoa.funcao, funcao_id: @pessoa.funcao_id, identidade: @pessoa.identidade, imagem: @pessoa.imagem, livrobruxa: @pessoa.livrobruxa, localtrabalho: @pessoa.localtrabalho, login: @pessoa.login, mostra_niver: @pessoa.mostra_niver, motivotransf: @pessoa.motivotransf, naturalcidade: @pessoa.naturalcidade, naturaluf: @pessoa.naturaluf, nome_completo: @pessoa.nome_completo, nome_guerra: @pessoa.nome_guerra, numero: @pessoa.numero, obs: @pessoa.obs, om: @pessoa.om, omanterior: @pessoa.omanterior, pispasep: @pessoa.pispasep, posto_graduacao_id: @pessoa.posto_graduacao_id, quadro_id: @pessoa.quadro_id, rarc: @pessoa.rarc, religiao: @pessoa.religiao, saram: @pessoa.saram, secao: @pessoa.secao, sexo: @pessoa.sexo, sispes: @pessoa.sispes, situacao: @pessoa.situacao, tempoantano: @pessoa.tempoantano, tempoantdia: @pessoa.tempoantdia, tempoantmes: @pessoa.tempoantmes, tipo: @pessoa.tipo, tiposangue: @pessoa.tiposangue, titulocidade: @pessoa.titulocidade, titulonum: @pessoa.titulonum, titulosecao: @pessoa.titulosecao, titulouf: @pessoa.titulouf, titulozona: @pessoa.titulozona, turma: @pessoa.turma, turnotrabalho: @pessoa.turnotrabalho, uf: @pessoa.uf, user: @pessoa.user, vilaa: @pessoa.vilaa }
    end

    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should show pessoa" do
    get :show, id: @pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa
    assert_response :success
  end

  test "should update pessoa" do
    patch :update, id: @pessoa, pessoa: { agencia: @pessoa.agencia, antiguidade: @pessoa.antiguidade, ass_dispensa: @pessoa.ass_dispensa, bairro: @pessoa.bairro, banco: @pessoa.banco, cep: @pessoa.cep, cidade: @pessoa.cidade, cmt: @pessoa.cmt, cnhcat: @pessoa.cnhcat, cnhnum: @pessoa.cnhnum, cnhvalidade: @pessoa.cnhvalidade, comportamento: @pessoa.comportamento, contacorrente: @pessoa.contacorrente, cpf: @pessoa.cpf, cracha: @pessoa.cracha, cracha_id: @pessoa.cracha_id, cracha_validade: @pessoa.cracha_validade, data_nascimento: @pessoa.data_nascimento, datacadastro: @pessoa.datacadastro, email: @pessoa.email, endereco: @pessoa.endereco, escala1: @pessoa.escala1, escala: @pessoa.escala, escala_amarela: @pessoa.escala_amarela, escala_preta: @pessoa.escala_preta, escala_receber_email: @pessoa.escala_receber_email, escala_roxa: @pessoa.escala_roxa, escala_vermelha: @pessoa.escala_vermelha, especialidade_id: @pessoa.especialidade_id, esqsec_id: @pessoa.esqsec_id, estadocivil: @pessoa.estadocivil, falert: @pessoa.falert, falertesquadrao: @pessoa.falertesquadrao, filmae: @pessoa.filmae, filpai: @pessoa.filpai, fone1: @pessoa.fone1, fone2: @pessoa.fone2, fonetrab: @pessoa.fonetrab, fonetrabramal: @pessoa.fonetrabramal, funcao: @pessoa.funcao, funcao_id: @pessoa.funcao_id, identidade: @pessoa.identidade, imagem: @pessoa.imagem, livrobruxa: @pessoa.livrobruxa, localtrabalho: @pessoa.localtrabalho, login: @pessoa.login, mostra_niver: @pessoa.mostra_niver, motivotransf: @pessoa.motivotransf, naturalcidade: @pessoa.naturalcidade, naturaluf: @pessoa.naturaluf, nome_completo: @pessoa.nome_completo, nome_guerra: @pessoa.nome_guerra, numero: @pessoa.numero, obs: @pessoa.obs, om: @pessoa.om, omanterior: @pessoa.omanterior, pispasep: @pessoa.pispasep, posto_graduacao_id: @pessoa.posto_graduacao_id, quadro_id: @pessoa.quadro_id, rarc: @pessoa.rarc, religiao: @pessoa.religiao, saram: @pessoa.saram, secao: @pessoa.secao, sexo: @pessoa.sexo, sispes: @pessoa.sispes, situacao: @pessoa.situacao, tempoantano: @pessoa.tempoantano, tempoantdia: @pessoa.tempoantdia, tempoantmes: @pessoa.tempoantmes, tipo: @pessoa.tipo, tiposangue: @pessoa.tiposangue, titulocidade: @pessoa.titulocidade, titulonum: @pessoa.titulonum, titulosecao: @pessoa.titulosecao, titulouf: @pessoa.titulouf, titulozona: @pessoa.titulozona, turma: @pessoa.turma, turnotrabalho: @pessoa.turnotrabalho, uf: @pessoa.uf, user: @pessoa.user, vilaa: @pessoa.vilaa }
    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete :destroy, id: @pessoa
    end

    assert_redirected_to pessoas_path
  end
end
