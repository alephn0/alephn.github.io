package main

import (
	"database/sql"
	"fmt"
	"io/ioutil"
	"net/http"
	"strconv"

	_ "github.com/mattn/go-sqlite3"
)

// Page es la estructura de la pagina Web
type Page struct {
	Title string
	Body  []byte
}

func loadPage(title string) (*Page, error) {
	filename := title + ".html"
	body, err := ioutil.ReadFile(filename)
	if err != nil {
		return nil, err
	}
	return &Page{Title: title, Body: body}, nil
}

func viewHandler(w http.ResponseWriter, r *http.Request) {
	title := r.URL.Path[len("/view/"):]
	p, _ := loadPage(title)
	fmt.Fprintf(w, "<h1></h1><div>%s</div>", p.Body)
	database := connect()
	rows, err := database.Query(`SELECT  count(*) FROM PACIENTE`)
	if err != nil {
		fmt.Println(err, " ERROR EN DB")
	}
	var query string
	var codigo string
	var descripcion string
	var cantidad int
	var fila int
	query = `SELECT TIPO_SOLICITUD.Cod_solicitud,TIPO_SOLICITUD.Descripcion, count(*) 
	    FROM PACIENTE,TIPO_SOLICITUD 
	    WHERE PACIENTE.Cod_solicitud = TIPO_SOLICITUD.Cod_solicitud
		GROUP BY 1,2
		ORDER BY 3 DESC;`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<img src='https://upload.wikimedia.org/wikipedia/commons/b/b4/Logo-ces.png' alt='UNIVERSIDAD CES' width='340' height='103'><br>")
	fmt.Fprintf(w, "<h1>MAESTRIA DE TIC EN SALUD </h1>")
	fmt.Fprintf(w, "<h2>FUNDAMENTOS EN TIC</h2>")
	fmt.Fprintf(w, "<h2>Taller de Bases de Datos</h2>")
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 1</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cuantas CX son ELECTIVAS Y cantas son URGENTES</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>Descripci&oacute;n</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
	query = `SELECT MEDICO.Cod_medico,MEDICO.Nombre, count(*) 
		FROM PACIENTE, MEDICO 
		WHERE PACIENTE.Id_medico = medico.Cod_medico
		GROUP BY 1
		ORDER BY 3 DESC;`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 2</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cual es el médico que hace más CX</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>M&eacute;dico</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
	query = `SELECT AMBITO.Cod_ambito,AMBITO.Descripcion, count(*) 
		FROM PACIENTE,AMBITO 
		WHERE PACIENTE.Cod_ambito = AMBITO.Cod_ambito
		GROUP BY 1
		ORDER BY 3 DESC`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 3</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cuantas CX son HOSPITALIZADOS Y cuantas son AMBULATORIAS</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>Descripci&oacute;n</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
	query = `SELECT CIRUGIA.Cod_cirugia,CIRUGIA.Descripcion, count(*) 
		FROM PACIENTE,CIRUGIA 
		WHERE PACIENTE.Cod_cirugia = CIRUGIA.Cod_cirugia
		GROUP BY 1,2
		ORDER BY 3 DESC`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 4</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cuales son las CX o Prestaciones más realizadas</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>CX</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
	query = `SELECT DIAGNOSTICO.Cod_diagnostico,DIAGNOSTICO.Descripcion, count(*) 
		FROM PACIENTE,DIAGNOSTICO 
		WHERE PACIENTE.Cod_diagnostico = DIAGNOSTICO.Cod_diagnostico
		GROUP BY 1,2
		ORDER BY 3 DESC`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 5</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cuál es el diagnóstico más recurrente</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>DX</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
	query = `SELECT CIRUGIA.Cod_cirugia,CIRUGIA.Descripcion, sum(Reing_Urgencias) 
		FROM PACIENTE,CIRUGIA
 		WHERE PACIENTE.Cod_cirugia = CIRUGIA.Cod_cirugia
 		GROUP BY 1,2
 		ORDER BY 3 DESC`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 6</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cuál es la Cx con más reingresos a Urgencias</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>CX</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
	query = `SELECT CIRUGIA.Cod_cirugia,CIRUGIA.Descripcion, sum(Reing_hospitalizacion) 
		FROM PACIENTE,CIRUGIA
 		WHERE PACIENTE.Cod_cirugia = CIRUGIA.Cod_cirugia
 		GROUP BY 1,2
 		ORDER BY 3 DESC`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 7</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cuál es la Cx con más reingresos a Hospitalización</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>CX</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
	query = `SELECT CIRUGIA.Cod_cirugia,CIRUGIA.Descripcion, sum(Reing_cirugia) 
		FROM PACIENTE,CIRUGIA
 		WHERE PACIENTE.Cod_cirugia = CIRUGIA.Cod_cirugia
 		GROUP BY 1,2
 		ORDER BY 3 DESC`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 8</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cuál es la Cx con más reingresos a Cirugía</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>CX</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
	query = `SELECT MEDICO.Cod_medico,MEDICO.Nombre, sum(Reing_cirugia+Reing_Urgencias+Reing_hospitalizacion) 
		FROM PACIENTE, MEDICO
  		WHERE PACIENTE.Id_medico = medico.Cod_medico
  		GROUP BY 1
  		ORDER BY 3`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 9</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cuál es el médico con menos  reingresos totales</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>Médico</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
	query = `SELECT ESPECIALIDAD.Cod_especialidad,ESPECIALIDAD.Descripcion, count(*) 
		FROM PACIENTE, MEDICO, ESPECIALIDAD
  		WHERE PACIENTE.Id_medico = medico.Cod_medico
    	  AND MEDICO.Especialidad = ESPECIALIDAD.Cod_especialidad
  		GROUP BY 1
  		ORDER BY 3 DESC`
	rows, _ = database.Query(query)
	fmt.Fprintf(w, "<table border-style=solid border-collapse=collapse>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>CONSULTA - 10</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#CCCCCC' colspan='3' align='center'><b>Cuál es la especialidad que más hace CX</b></td></tr>")
	fmt.Fprintf(w, "<tr><td bgcolor='#DDDDDD' colspan='3' align='center'>"+query+"</td></tr>")
	fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>Codigo</td><td>Especialidad</td><td>Cantidad</td></tr>")
	fila = 0
	for rows.Next() {
		fila++
		rows.Scan(&codigo, &descripcion, &cantidad)
		if fila%2 == 0 {
			fmt.Fprintf(w, "<tr bgcolor='#85C1E9'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		} else {
			fmt.Fprintf(w, "<tr bgcolor='#FFFFFF'><td>"+codigo+"</td><td>"+descripcion+"</td><td align=right>"+strconv.Itoa(cantidad)+"</td></tr>")
		}
	}
	fmt.Fprintf(w, "</table><br><br>")
	
}

func main() {
	http.HandleFunc("/view/", viewHandler)
	http.ListenAndServe(":8080", nil)
}

func connect() *sql.DB {
	database, _ := sql.Open("sqlite3", "./DATABASE/CES.db")
	return database
}
