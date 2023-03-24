/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package source;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alumno
 */
public class Negocio implements Serializable {
    private List<Datos> Lista;
    
    public Negocio(){
    }
    
    public boolean loadLista( ){
        Datos datos = null;
        Lista = new ArrayList<>();
        for (int i = 1; i <= 5; i++) {
            datos = new Datos( );
            datos.setCalf((float)(Math.random() * 10));
            datos.setNombre(String.format("Alumno %d"));
            Lista.add(datos);
        }
        return Lista != null && Lista.isEmpty();
    }
    
    public List<Datos> getLista(){
        if(Lista == null || Lista.isEmpty()) {
            if(! loadLista()) {
                return null;
            }
        }
        return Lista;
    }
    
    public void setLista(List<Datos> lista) {
        this.Lista = lista;
    }
}
