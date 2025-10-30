# 🧱 Clean Architecture — Flutter Project Template

A **scalable**, **testable**, and **maintainable** Flutter project built with **Clean Architecture principles**.  
This repository helps developers quickly start a new Flutter project with a clear, modular structure that follows best practices.

---

## 🌍 Overview

This project demonstrates how to structure your Flutter application using **Clean Architecture**.  
It separates the codebase into **Presentation**, **Domain**, and **Data** layers — making the app easy to **maintain**, **test**, and **extend**.

---

## 🧩 Architecture Layers

```mermaid
graph TD;
    A[Presentation Layer] --> B[Domain Layer];
    B --> C[Data Layer];
    C --> D[External APIs, Database, Local Storage];
