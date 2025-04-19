# 🧪 Rick and Morty API Laravel App

Este proyecto en Laravel consume la API pública de Rick and Morty y permite:

✅ Consultar los primeros 100 personajes desde la API  
✅ Guardarlos en una base de datos local  
✅ Visualizarlos y editarlos desde una interfaz web  
✅ Usar modales para edición más amigable

---

## 🚀 Características

- Consumo de API externa `https://rickandmortyapi.com/api/character`
- Almacenamiento de datos en base de datos MySQL
- Interfaz con Bootstrap 5
- Edición de personajes mediante modales emergentes
- Organización en controladores, vistas y modelos (MVC)
- Persistencia con migraciones de Laravel

---

## 🛠️ Requisitos

- PHP 8.1 o superior
- Composer
- Laravel 10+
- MySQL (XAMPP, Laragon, etc.)

---

## ⚙️ Instalación

1. Clona este repositorio:

```bash
git clone https://github.com/andresrios203/consumo-de-api-laravel.git
cd consumo-de-api-laravel
```

2. Instala dependencias:

```bash
composer install
```
3. Configura la conexión a tu base de datos en el archivo `.env`:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=rickmorty
DB_USERNAME=root
DB_PASSWORD=
```

4. Ejecuta las migraciones:

```bash
php artisan migrate
```

5. Corre el servidor local:

```bash
php artisan serve
```

Abre en el navegador:  
👉 [http://127.0.0.1:8000](http://127.0.0.1:8000)

---

## 📦 Funcionalidad

### 🔎 `/characters/api`
- Muestra los primeros 100 personajes traídos desde la API.
- Botón para guardar los datos en base de datos.

### 🧾 `/characters/db`
- Muestra los personajes guardados en base de datos.
- Permite editar cualquier personaje mediante modales emergentes.

---

## 💾 Exportar/Importar base de datos

Incluye archivo: `rickmorty.sql`

### Para importar desde consola:

```bash
mysql -u root -p rickmorty < rickmorty.sql
```

O usa [phpMyAdmin](http://localhost/phpmyadmin) → Importar → Selecciona el archivo `.sql`

---

## 👨‍💻 Autor

**Andrés Felipe Rios**  
Desarrollado como prueba técnica usando Laravel + PHP + Bootstrap  
Abril 2025


