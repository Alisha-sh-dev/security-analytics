# Peter Darwin Estate Agency – Database ERD Design

## Project Overview
A comprehensive database design project for **Peter Darwin Estate Agency**, a full-service real estate business managing property sales, rentals, client relationships, and viewing appointments. This project demonstrates my ability to translate complex business requirements into a well-structured relational database model using Entity Relationship Diagram (ERD) methodology.

**Core Technologies:** Entity Relationship Modeling | Database Design | Normalization | Primary/Foreign Key Design | Business Requirements Analysis | Referential Integrity

---
## 🎯 Objectives
- Identify and define entities with attributes and keys  
- Map relationships (1:1, 1:M, M:N) with referential integrity  
- Apply normalization to avoid redundancy and ensure consistency  
- Support business workflows: rentals, sales, viewings, and offers  

---

## 🛠️ Entities & Relationships
**Key Entities:** Branch, Staff, Client, RentalProperty, RentalCustomer, PropertyForSale, PotentialBuyer, PropertyRequirements, ViewingAppointment, Offer  

**Relationships:**  
- Branch → Staff (1:M)  
- Branch → Properties (1:M)  
- Client → RentalCustomer (1:M)  
- PropertyForSale → ViewingAppointment (1:M)  
- PotentialBuyer → Offer (1:M)  

---

## 📊 ERD Diagram
![ER Diagram](media/image11.jpg)  
*Complete ERD for Peter Darwin Estate Agency*

---

## 🏗️ Workflows
- **Rental Management:** Client inquiry → Property search → Rental agreement → Property assignment  
- **Sales Process:** Buyer inquiry → Requirements → Viewing appointment → Offer submission → Sale completion  

---

## 🔧 Design Principles
- **Normalization:** Achieved 3NF compliance  
- **Indexing:** Recommended for FK-heavy tables (Staff, Properties, Offers)  
- **Data Integrity:** Enforced via PK/FK constraints and validation rules  

---

## 📈 Schema Summary
- **Tables:** 10  
- **Relationships:** 10 (One-to-Many)  
- **Attributes:** 45+  
- **Scalability:** Supports growth in properties, clients, and staff  

---

## 📂 Project Files
- `PRINCIPLES_OF_COMPUTING_ERD.pdf` – Full report & analysis  
- `ERD_Diagram.png` – High-resolution ERD diagram  
- `Database_Schema.sql` – SQL implementation  

---

## 🔗 Connect
**Alisha Sh**  
GitHub: [@Alisha-sh-dev](https://github.com/Alisha-sh-dev)  
LinkedIn: [Alisha Sh](https://linkedin.com/in/Alisha-Sh)