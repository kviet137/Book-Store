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
- [Screenshots](#screenshots)
- [Contact](#contact)

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
- User Role: Browse books, add them to the cart, and proceed to checkout.
- Admin Role : Manage the book catalog, view sales, and handle user management.
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Screenshots 📸
1. Homepage

2. Book Details

3. Login Page

4. Cart and Checkout

5. Admin Panel
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Contact 📬
For any inquiries or feedback, feel free to reach out at:

Email: kviet137@gmail.com
GitHub: https://github.com/kviet137

<p align="right">(<a href="#readme-top">back to top</a>)</p