import streamlit as st
import mysql.connector

conexaobd = mysql.connector.connect(
    host='localhost',
    user='root',
    password='12345',
    database='bdcontrolecolaboradores'
)

meucursor = conexaobd.cursor()

print("Conexão estabelecida")

st.set_page_config(
    page_icon=":gear:",
    page_title="Controle de Colaboradores",
    layout="wide",
    initial_sidebar_state="auto",
    menu_items={
        'Get Help': 'mailto:gustavocostasilva505@gmail.com',
        'Report a bug': "mailto:gustavocostasilva505@gmail.com",
        'About': "###### © 2023 Gustavo Costa Silva All Rights Reserved"
    }
)

st.header(":male-office-worker: :female-office-worker: Controle de Colaboradores")
st.markdown("######")
opcao = st.sidebar.selectbox("Selecione uma ação", ("Inserir", "Consultar", "Atualizar", "Excluir"))

if opcao == "Inserir":
    st.subheader("Inserir colaborador")
    st.markdown("######")
    with st.form(key="insert_colaborador"):
        input_nome_colaborador = st.text_input(label="Nome", placeholder="Nome")
        input_cargo_colaborador = st.selectbox(label="Cargo", placeholder="Cargo", options=["Desenvolvedor", "Analista",
                                                                                            "Designer", "Suporte"])
        if st.form_submit_button("Inserir"):
            sql = "insert into tbdadoscolaboradores(nomeColaborador, cargoColaborador) values(%s, %s)"
            val = (input_nome_colaborador, input_cargo_colaborador)
            meucursor.execute(sql, val)
            conexaobd.commit()
            st.success("Colaborador registrado com sucesso!")

elif opcao == "Consultar":
    st.subheader("Lista de colaboradores")
    st.markdown("***")
    st.text("IDㅤㅤㅤㅤㅤㅤㅤNomeㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤCargo")
    meucursor.execute("select * from tbdadoscolaboradores")
    result = meucursor.fetchall()
    for row in result:
        st.text(row)

elif opcao == "Atualizar":
    st.subheader("Atualizar registro de colaborador")
    st.markdown("######")
    with st.form(key="update_colaborador"):
        input_colaborador_ID = st.number_input(label="Informe o ID do colaborador que deseja atualizar",
                                               min_value=1, format="%d", step=1)
        input_nome_colaborador = st.text_input(label="Nome", placeholder="Nome")
        input_cargo_colaborador = st.selectbox(label="Cargo", placeholder="Cargo", options=["Desenvolvedor", "Analista",
                                                                                            "Designer", "Suporte"])
        if st.form_submit_button("Atualizar"):
            sql = "update tbdadoscolaboradores set nomeColaborador = %s, cargoColaborador = %s where colaboradorID = %s"
            val = (input_nome_colaborador, input_cargo_colaborador, input_colaborador_ID)
            meucursor.execute(sql, val)
            conexaobd.commit()
            st.success("Registro de colaborador atualizado com sucesso!")

elif opcao == "Excluir":
    st.subheader("Excluir registro de colaborador")
    st.markdown("######")
    with st.form(key="delete_colaborador"):
        input_colaborador_ID = st.number_input(label="Informe o ID do colaborador que deseja excluir",
                                               min_value=1, format="%d", step=1)
        if st.form_submit_button("Excluir"):
            sql = "delete from tbdadoscolaboradores where colaboradorID =%s"
            val = (input_colaborador_ID,)
            meucursor.execute(sql, val)
            conexaobd.commit()
            st.success("Registro de colaborador excluído com sucesso!")
