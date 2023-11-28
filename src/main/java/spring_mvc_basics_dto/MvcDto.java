package spring_mvc_basics_dto;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class MvcDto {
	@Id
	private int id;
	private String name;
    public String passwd;
	@Override
	public String toString() {
		return "MvcDto [id=" + id + ", name=" + name + ", passwd=" + passwd + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	

}
