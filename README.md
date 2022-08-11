# pruebas_terraform
Proyecto Sistemas Distribuidos

Requisitos:

* Terraform
* Cuenta en AWS

Instrucciones:

* En la cuenta de AWS en tu gestion de EC2 crear un par de claves con el nombre de "proyecto" para asignarla a 
  las instancias creadas y accederlas de ser necesario
* Ejecutar una consola en la carpeta /pruebas_terraform
* Exportar en la consola clave de acceso y clave secreta para la gestion en AWS
```
   export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
   export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
```  
 
* Ejecutar `terraform init`
* Ejecutar `terraform apply`
* Finalizado la ejecución de `terraform apply` se pasara la url del balanceador de carga para validar el despliegue correcto
  de la infraestructura

Nota: Si ya no se requiere la infraestructura ejecutar el comando `terraform destroy` para bajar completamente todos los servicios relacionados
