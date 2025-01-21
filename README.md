<a name="readme-top"></a>


<h3 align="center">Book World</h3>

  <p align="center">
    An online bookstore application built with Spring Boot, Spring Security, and Bootstrap.
    <br />
    <a href="https://github.com/kviet137/case-study"><strong>Explore the docs »</strong></a>
    <br />
    <br />

  </p>


---

<!-- TABLE OF CONTENTS -->
## Table of Contents

- [About the Project](#about-the-project)
    - [Built With](#built-with)
- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots-)
- [Contact](#contact-)

---

## About The Project

Book World is an online bookstore application that allows users to browse, search, and purchase books. The project leverages modern frameworks and technologies to demonstrate a robust and secure web application.

### Features

- **User Authentication & Authorization**: Secure login and role-based access using Spring Security.
- **Responsive Design**: Clean, mobile-friendly UI with Bootstrap.
- **Book Catalog Management**: Display and filter books dynamically.
- **Search Functionality**: Search for your favorite books.
- **Cart & Checkout**: Add books to the cart and simulate a purchase process.

### Built With

This project was built using:

- [Spring Boot](https://spring.io/projects/spring-boot)
- [Spring Security](https://spring.io/projects/spring-security)
- [Bootstrap](https://getbootstrap.com/)
- [MySQL](https://www.mysql.com/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Getting Started

Follow these instructions to set up a local copy of the project.

### Prerequisites

- **Java Development Kit (JDK)**: Version 11 or higher
- **Maven**: For dependency management
- **MySQL**: Database server
- **Git**: To clone the repository

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://https://github.com/kviet137/case-study.git
   cd book-world
2. **Set Up the Database**:   
3. **Create a new MySQL database named book_world**.
   **Update the application.properties file with your database credentials**:
   **properties**:
    ````bash
    spring.datasource.url=jdbc:mysql://localhost:3306/book_world
    spring.datasource.username=your-username
    spring.datasource.password=your-password
    spring.jpa.hibernate.ddl-auto=update

4.  **Run the Application**:

    ````bash
    ./mvnw spring-boot:run
5.  **Access the Application: Open your browser and navigate to http://localhost:9090**.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Usage
- User Role: Browse books, add them to the cart, proceed to checkout, and view order history.
- Admin Role : Manage the book catalog, view sales, and handle user management.
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Screenshots 📸
1. Homepage ![homepageSS.png](src%2Fmain%2Fwebapp%2Fpub%2Fscreenshots%2FhomepageSS.png)

2. Book Details ![bookdetailSS.png](src%2Fmain%2Fwebapp%2Fpub%2Fscreenshots%2FbookdetailSS.png)

3. Login Page ![loginSS.png](src%2Fmain%2Fwebapp%2Fpub%2Fscreenshots%2FloginSS.png)

4. Cart and Checkout ![cartSS.png](src%2Fmain%2Fwebapp%2Fpub%2Fscreenshots%2FcartSS.png)

5. Order History ![orderhistorySS.png](src%2Fmain%2Fwebapp%2Fpub%2Fscreenshots%2ForderhistorySS.png)

6. Admin Panel ![adminSS.png](src%2Fmain%2Fwebapp%2Fpub%2Fscreenshots%2FadminSS.png)
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Contact 📬
For any inquiries or feedback, feel free to reach out at:

Email: kviet137@gmail.com
GitHub: https://github.com/kviet137

<p align="right">(<a href="#readme-top">back to top</a>)</p>