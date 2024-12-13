import streamlit as st

# Set up the page title
st.set_page_config(page_title="Simple Dashboard", page_icon=":guardsman:", layout="wide")

# Define the different pages
def login_page():
    st.title("Login Page")
    username = st.text_input("Username")
    password = st.text_input("Password", type="password")

    # Corrected: Fixed typo in button and comparison operator
    if st.button("Login"):
        if username == "nitishrudra3510" and password == "Rudra@805112":
            st.success("Login Successful")
        else:
            st.error("Invalid username or password")

# Main app logic
def main():
    st.sidebar.title("Navigation")
    page = st.sidebar.radio("Choose a page", ("Login",))

    if page == "Login":
        login_page()

if __name__ == "__main__":
    main()
