require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { agencia: @person.agencia, antiguidade: @person.antiguidade, ass_dispensa: @person.ass_dispensa, bairro: @person.bairro, banco: @person.banco, cep: @person.cep, cidade: @person.cidade, cmt: @person.cmt, cnhcat: @person.cnhcat, cnhnum: @person.cnhnum, cnhvalidade: @person.cnhvalidade, comportamento: @person.comportamento, contacorrente: @person.contacorrente, cpf: @person.cpf, cracha: @person.cracha, cracha_id: @person.cracha_id, cracha_validade: @person.cracha_validade, data_nascimento: @person.data_nascimento, datacadastro: @person.datacadastro, email: @person.email, endereco: @person.endereco, escala1: @person.escala1, escala: @person.escala, escala_amarela: @person.escala_amarela, escala_preta: @person.escala_preta, escala_receber_email: @person.escala_receber_email, escala_roxa: @person.escala_roxa, escala_vermelha: @person.escala_vermelha, especialidade: @person.especialidade, esqsec_id: @person.esqsec_id, estadocivil: @person.estadocivil, falert: @person.falert, falertesquadrao: @person.falertesquadrao, filmae: @person.filmae, filpai: @person.filpai, fone1: @person.fone1, fone2: @person.fone2, fonetrab: @person.fonetrab, fonetrabramal: @person.fonetrabramal, funcao: @person.funcao, funcao_id: @person.funcao_id, identidade: @person.identidade, imagem: @person.imagem, livrobruxa: @person.livrobruxa, localtrabalho: @person.localtrabalho, login: @person.login, mostra_niver: @person.mostra_niver, motivotransf: @person.motivotransf, naturalcidade: @person.naturalcidade, naturaluf: @person.naturaluf, nome_completo: @person.nome_completo, nome_guerra: @person.nome_guerra, numero: @person.numero, obs: @person.obs, om: @person.om, omanterior: @person.omanterior, pispasep: @person.pispasep, posto_graduacao: @person.posto_graduacao, quadro: @person.quadro, rarc: @person.rarc, religiao: @person.religiao, saram: @person.saram, secao: @person.secao, sexo: @person.sexo, sispes: @person.sispes, situacao: @person.situacao, tempoantano: @person.tempoantano, tempoantdia: @person.tempoantdia, tempoantmes: @person.tempoantmes, tipo: @person.tipo, tiposangue: @person.tiposangue, titulocidade: @person.titulocidade, titulonum: @person.titulonum, titulosecao: @person.titulosecao, titulouf: @person.titulouf, titulozona: @person.titulozona, turma: @person.turma, turnotrabalho: @person.turnotrabalho, uf: @person.uf, user: @person.user, vilaa: @person.vilaa }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { agencia: @person.agencia, antiguidade: @person.antiguidade, ass_dispensa: @person.ass_dispensa, bairro: @person.bairro, banco: @person.banco, cep: @person.cep, cidade: @person.cidade, cmt: @person.cmt, cnhcat: @person.cnhcat, cnhnum: @person.cnhnum, cnhvalidade: @person.cnhvalidade, comportamento: @person.comportamento, contacorrente: @person.contacorrente, cpf: @person.cpf, cracha: @person.cracha, cracha_id: @person.cracha_id, cracha_validade: @person.cracha_validade, data_nascimento: @person.data_nascimento, datacadastro: @person.datacadastro, email: @person.email, endereco: @person.endereco, escala1: @person.escala1, escala: @person.escala, escala_amarela: @person.escala_amarela, escala_preta: @person.escala_preta, escala_receber_email: @person.escala_receber_email, escala_roxa: @person.escala_roxa, escala_vermelha: @person.escala_vermelha, especialidade: @person.especialidade, esqsec_id: @person.esqsec_id, estadocivil: @person.estadocivil, falert: @person.falert, falertesquadrao: @person.falertesquadrao, filmae: @person.filmae, filpai: @person.filpai, fone1: @person.fone1, fone2: @person.fone2, fonetrab: @person.fonetrab, fonetrabramal: @person.fonetrabramal, funcao: @person.funcao, funcao_id: @person.funcao_id, identidade: @person.identidade, imagem: @person.imagem, livrobruxa: @person.livrobruxa, localtrabalho: @person.localtrabalho, login: @person.login, mostra_niver: @person.mostra_niver, motivotransf: @person.motivotransf, naturalcidade: @person.naturalcidade, naturaluf: @person.naturaluf, nome_completo: @person.nome_completo, nome_guerra: @person.nome_guerra, numero: @person.numero, obs: @person.obs, om: @person.om, omanterior: @person.omanterior, pispasep: @person.pispasep, posto_graduacao: @person.posto_graduacao, quadro: @person.quadro, rarc: @person.rarc, religiao: @person.religiao, saram: @person.saram, secao: @person.secao, sexo: @person.sexo, sispes: @person.sispes, situacao: @person.situacao, tempoantano: @person.tempoantano, tempoantdia: @person.tempoantdia, tempoantmes: @person.tempoantmes, tipo: @person.tipo, tiposangue: @person.tiposangue, titulocidade: @person.titulocidade, titulonum: @person.titulonum, titulosecao: @person.titulosecao, titulouf: @person.titulouf, titulozona: @person.titulozona, turma: @person.turma, turnotrabalho: @person.turnotrabalho, uf: @person.uf, user: @person.user, vilaa: @person.vilaa }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
