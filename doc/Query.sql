SELECT OT.Numero, OT.T_Identificacion, OT.Identificacion, PACIENTES.Nombres, PACIENTES.Apellidos, PACIENTES.Sexo, PACIENTES.F_Nacimiento, PACIENTES.Direccion, PACIENTES.Telefonos, OT.Diagnostico, DIAGNOSTICOS.Descripcion, OT.F_Realizacion, L_RESIDENCIA.Descripcion, EXAMENES.Descripcion, MODALIDADES.Descripcion, RADIOLOGOS.Nombres, RADIOLOGOS.Apellidos, RADIOLOGOS.R_Medico
 FROM OT, PACIENTES, DIAGNOSTICOS, L_RESIDENCIA, R_OT_EXAMEN, EXAMENES, MODALIDADES, R_OT_RADIOLOGO, RADIOLOGOS
 WHERE OT.T_Identificacion = PACIENTES.T_Identificacion
   AND OT.Identificacion = PACIENTES.Identificacion
   AND OT.Diagnostico = DIAGNOSTICOS.Codigo
   AND PACIENTES.L_Residencia = L_RESIDENCIA.Codigo
   AND OT.Numero = R_OT_EXAMEN.Numero
   AND R_OT_EXAMEN.Examen = EXAMENES.Codigo
   AND EXAMENES.Modalidad = MODALIDADES.Codigo
   AND OT.Numero = R_OT_RADIOLOGO.Numero
   AND R_OT_RADIOLOGO.Radiologo = RADIOLOGOS.Identificacion
   AND OT.T_Identificacion = "CC"
   AND OT.Identificacion = "16303150"
ORDER BY 1
	