# Guía de Instalación - Meeting Voice AI

## 🚨 Errores Comunes y Soluciones

Los errores que estás viendo son normales - son errores de TypeScript porque las dependencias aún no están instaladas.

## Pasos para Instalar y Corregir Errores

### 1. Backend (NestJS)

```bash
cd backend
npm install
```

Esto instalará:
- @nestjs/common
- @nestjs/typeorm  
- typeorm
- Todas las demás dependencias

### 2. Frontend (React + Vite)

```bash
cd frontend
npm install
```

Esto instalará:
- react
- react-dom
- react-router-dom
- lucide-react
- react-hot-toast
- Todas las demás dependencias

### 3. Base de Datos PostgreSQL

```sql
-- Crear base de datos
CREATE DATABASE meeting_voice_ai;

-- Crear usuario (opcional)
CREATE USER meeting_user WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE meeting_voice_ai TO meeting_user;
```

### 4. Configurar Variables de Entorno

```bash
# En la carpeta backend
cp .env.example .env
```

Editar el archivo `.env` con tus configuraciones:
```env
DB_HOST=localhost
DB_PORT=5432
DB_USERNAME=postgres
DB_PASSWORD=tu_contraseña
DB_NAME=meeting_voice_ai
PORT=3001
```

### 5. Iniciar Aplicaciones

```bash
# Terminal 1 - Backend
cd backend
npm run start:dev

# Terminal 2 - Frontend  
cd frontend
npm run dev
```

## 🔧 Si persisten errores después de instalar:

### Backend:
```bash
cd backend
rm -rf node_modules package-lock.json
npm install
```

### Frontend:
```bash
cd frontend
rm -rf node_modules package-lock.json
npm install
```

## 📋 Verificar Instalación

Una vez instaladas las dependencias, los errores de TypeScript desaparecerán.

### Backend debe tener estas carpetas:
```
backend/
├── src/
│   ├── modules/
│   │   ├── meeting/
│   │   ├── transcription/
│   │   ├── summary/
│   │   ├── approval/
│   │   ├── calendar/
│   │   └── notification/
│   └── services/
└── node_modules/ ← Se crea al instalar
```

### Frontend debe tener:
```
frontend/
├── src/
│   └── components/
├── node_modules/ ← Se crea al instalar
├── package.json
├── vite.config.ts
├── tailwind.config.js
└── tsconfig.json
```

## 🌐 Acceder a la Aplicación

- Frontend: http://localhost:3000
- Backend API: http://localhost:3001

## 🤖 Configurar IA (Opcional)

### Para Ollama (Recomendado):
```bash
# Instalar Ollama
curl -fsSL https://ollama.ai/install.sh | sh

# Descargar Llama 3
ollama pull llama3

# Iniciar servidor
ollama serve
```

### Para Whisper (Alternativa):
```bash
pip install openai-whisper
```

## ✅ Verificación Final

Si todo está bien instalado, deberías ver:

1. **Backend**: "Nest application successfully started" en puerto 3001
2. **Frontend**: "Local: http://localhost:3000" sin errores
3. **Sin errores de TypeScript** en el IDE

Los errores que ves ahora son TEMPORALES y desaparecerán después de instalar las dependencias.
