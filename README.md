# Meeting Voice AI - Sistema de Reconocimiento de Voz para Reuniones

Aplicación web para grabar, transcribir y analizar reuniones ejecutivas con IA.

## Características

### 1. Grabación de Audio
- Grabación directa desde navegador
- Subida de archivos existentes
- Pausar/reanudar grabación
- Visualización de duración en tiempo real

### 2. Transcripción Automática
- Whisper (OpenAI) para transcripción de voz a texto
- Soporte para español
- Detección de múltiples hablantes
- Confianza de transcripción

### 3. Resumen con IA
- Ollama con Llama 3 (gratuito)
- Extracción de puntos clave
- Identificación de acciones y decisiones
- Detección de fechas y tareas

### 4. Sistema de Aprobación
- Revisión humana de resúmenes
- Edición de contenido
- Historial de cambios
- Control de calidad

### 5. Calendario Inteligente
- Extracción automática de fechas
- Creación de eventos
- Sistema de notificaciones
- Priorización de tareas

### 6. Notificaciones
- Email automáticas
- Recordatorios de eventos
- Alertas de deadlines
- Estado de entregas

## Arquitectura

### Backend (NestJS + PostgreSQL)
- `backend/` - API REST
- Base de datos PostgreSQL
- Entidades: Meeting, Transcription, Summary, Approval, CalendarEvent, Notification
- Servicios de IA integrados

### Frontend (React + Tailwind CSS)
- `frontend/` - SPA moderna
- Componentes reutilizables
- Diseño responsivo
- Interfaz intuitiva

## Instalación

### Prerrequisitos
- Node.js 18+
- PostgreSQL 14+
- Ollama (opcional, para IA local)
- Whisper (opcional, para transcripción local)

### Backend
```bash
cd backend
npm install
cp .env.example .env
# Configurar variables de entorno
npm run start:dev
```

### Frontend
```bash
cd frontend
npm install
npm run dev
```

### Base de Datos
```sql
CREATE DATABASE meeting_voice_ai;
CREATE USER meeting_user WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE meeting_voice_ai TO meeting_user;
```

## Configuración de IA

### Ollama (Recomendado - Gratis)
```bash
# Instalar Ollama
curl -fsSL https://ollama.ai/install.sh | sh

# Descargar Llama 3
ollama pull llama3

# Iniciar servidor
ollama serve
```

### Whisper (Alternativa)
```bash
# Instalar Whisper
pip install openai-whisper

# Descargar modelo base
whisper --model base
```

## Uso

1. **Iniciar Sesión**: Acceder a http://localhost:3000
2. **Grabar Reunión**: Usar el grabador web
3. **Procesar Audio**: Sistema transcribe y resume automáticamente
4. **Aprobar Resumen**: Revisar y aprobar contenido generado
5. **Gestionar Calendario**: Ver eventos y tareas extraídas

## Estructura de Archivos

```
├── backend/
│   ├── src/
│   │   ├── modules/
│   │   │   ├── meeting/
│   │   │   ├── transcription/
│   │   │   ├── summary/
│   │   │   ├── approval/
│   │   │   ├── calendar/
│   │   │   └── notification/
│   │   ├── services/
│   │   │   └── ai.service.ts
│   │   └── entities/
│   ├── package.json
│   └── .env.example
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── MeetingRecorder.tsx
│   │   │   ├── MeetingList.tsx
│   │   │   ├── SummaryApproval.tsx
│   │   │   ├── Calendar.tsx
│   │   │   └── Dashboard.tsx
│   │   └── App.tsx
│   ├── package.json
│   └── tailwind.config.js
└── README.md
```

## Variables de Entorno

Copiar `.env.example` a `.env` y configurar:

```env
DB_HOST=localhost
DB_PORT=5432
DB_USERNAME=postgres
DB_PASSWORD=password
DB_NAME=meeting_voice_ai
PORT=3001
OLLAMA_URL=http://localhost:11434
```

## Flujo de Trabajo

1. **Grabación**: Usuario graba reunión
2. **Procesamiento**: Audio se transcribe con Whisper
3. **Análisis**: Llama 3 genera resumen y extrae datos
4. **Aprobación**: Humano revisa y aprueba contenido
5. **Calendario**: Fechas y tareas se agregan automáticamente
6. **Notificaciones**: Se envían recordatorios por email

## Tecnologías

- **Backend**: NestJS, TypeScript, PostgreSQL, TypeORM
- **Frontend**: React, TypeScript, Tailwind CSS, Vite
- **IA**: Whisper (transcripción), Llama 3 (resumen)
- **Infraestructura**: Docker, Node.js

## Licencia

MIT License - Libre para uso comercial y personal
