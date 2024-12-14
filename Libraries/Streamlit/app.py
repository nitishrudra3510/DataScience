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

def signup_page():
    st.title("Signup Page")
    username = st.text_input("Username")
    email = st.text_input("Email")
    password = st.text_input("Password", type="password")
    confirm_password = st.text_input("Confirm Password", type="password")

    if st.button("Signup"):
        if password == confirm_password:
            st.success(f"Signup successful for {username}")
        else:
            st.error("Passwords do not match")

def about_page():
    st.title("About Us")
    st.markdown("""
    **Welcome to our platform!**
    
    This is a simple demo dashboard where you can log in, sign up, and learn more about the platform.
    
    We offer services related to data analysis, machine learning, and more.
    """)

def contact_us_page():
    st.title("Contact Us")
    st.markdown("""
    **Get in Touch:**
    
    Email: nitishrudra3510.com  
    Phone: 9165654658  
    Address: Phagwara, Punjab
    """)

# Main app logic
def main():
    st.sidebar.title("Navigation")
    page = st.sidebar.radio("Choose a page", ("Login", "Signup", "About", "Contact Us"))

    if page == "Login":
        login_page()

    elif page == "Signup":
        signup_page()
    elif page == "About":
        about_page()
    elif page == "Contact Us":
        contact_us_page()

if __name__ == "__main__":
    main()
