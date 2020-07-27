# Hermosa Home Project

Esta es una aplicación que voy a utilizar para aprender Flutter.

### Concepto

Hermosa Home es una app que me permitaria manejar una lista de tareas rutinarias de compras para la casa 😁. La información va a ser almacenada en Google Sheet, la cual va ser expuesta por un servidor de NodeJS y consumido por el app en Flutter. 

##### Requerimientos

**MVP**

Requerimientos no funcionales:
- Seguridad: 
  - Debe utilizar un provedor para poder hacer login
  - La sesión debe de vencer cada 24hrs
- Compatibilidad:
  - Debe soportar la ultima version de iOS y Android  
- Usabilidad:
  - La aplicación debe utilizar un tema base como Material o Cuppertino para faciliar la experiencia de usuario (de ser posibles los 2 para cada SO).  
- Fiabilidad:
   - Debe estar disponible mismo tiempo que el provedor del hosting de. 

Requeriminetos funcionales:
- Un usuario debe poder hacer login a traves del correo de Google
- Un usuario debe poder leer la información almance
- El app debe crear tabs basados en los rangos definidos en un sheet
- El app debe traer la info de cada tab basado en el rango definido en el sheet

#### Tech Stack

**Back-end**
- NodeJS con NestJS va ser hosteado en heruko o cualquier servicio gratuito  
- Google Sheet API 

**Mobile**
- Flutter (version más reciente)
- GSheet package

**DevOps**
- Github actions
  - Automatizar deployments del Back-end
- Para esta fase no se soportara deployments automaticos del app, se instalara localmente por el momento

### Arquitectura

![Diagrama de arquitectura](./docs/hermosa_app_diagram.png?raw=true "Diagrama")