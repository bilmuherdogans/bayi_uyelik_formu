package com.basvuruonkayit.config;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.*;

@Controller
@RequestMapping(path="/store")
public class employeController
{

	
	@RequestMapping(method=RequestMethod.POST)
	public String saveEmploye(Model model,employee employeeNesnesi) throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		
			try 
			{
				
				System.out.print("Hata yok");
				Class.forName("com.mysql.jdbc.Driver");
				String baglantiYolu="jdbc:mysql://localhost:3306/basvurubilgileri";
				Connection baglantiNesnesi = DriverManager.getConnection(baglantiYolu,"root","A12345");
				System.out.print("Hata yok2");
				String sql="INSERT INTO kayit(isim,tcKimlikNo,adres,telefon,eposta,dogumTarihi,sonuc,tercihSebebi,il,ilce,semt,yatirimMiktari"
						+ ",eklemekIstedikleriniz) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
				
				PreparedStatement pst=baglantiNesnesi.prepareStatement(sql);
				pst.setString(1,employeeNesnesi.getIsim());
				pst.setString(2,employeeNesnesi.getTcKimlikNo());
				pst.setString(3,employeeNesnesi.getAdres());
				pst.setString(4,employeeNesnesi.getTelefon());
				pst.setString(5,employeeNesnesi.getEposta());
				pst.setString(6,employeeNesnesi.getDogumTarihi());
				pst.setString(7,employeeNesnesi.getSonuc());
				pst.setString(8,employeeNesnesi.getTercihSebebi());
				pst.setString(9,employeeNesnesi.getIl());
				pst.setString(10,employeeNesnesi.getIlce());
				pst.setString(11,employeeNesnesi.getSemt());
				pst.setString(12,employeeNesnesi.getYatirimMiktari());
				pst.setString(13,employeeNesnesi.getEklemekIstedikleriniz());

				int  sonuc=pst.executeUpdate();
				

			  
			} catch (SQLException ex) {
			    // handle any errors
	
			}
			
	
		
		model.addAttribute(employeeNesnesi);
		return "display";
	}
	
	
}
