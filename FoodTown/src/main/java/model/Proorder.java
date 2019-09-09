package model;
// Generated 26.Ağu.2019 09:08:06 by Hibernate Tools 5.2.12.Final

import static javax.persistence.GenerationType.IDENTITY;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "proorder")
public class Proorder implements java.io.Serializable {

	private Integer oid;
	private String otitle;
	private String ophoto;
	private BigDecimal oprice;
	private Integer ocategory;
	private Integer ostatu;

	public Proorder() {
	}

	public Proorder(String otitle, String ophoto, BigDecimal oprice, Integer ocategory, Integer ostatu) {
		this.otitle = otitle;
		this.ophoto = ophoto;
		this.oprice = oprice;
		this.ocategory = ocategory;
		this.ostatu =ostatu;

	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "oid", unique = true, nullable = false)
	public Integer getOid() {
		return this.oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	@Column(name = "otitle", nullable = false)
	public String getOtitle() {
		return this.otitle;
	}

	public void setOtitle(String otitle) {
		this.otitle = otitle;
	}

	@Column(name = "ophoto", nullable = false, length = 500)
	public String getOphoto() {
		return this.ophoto;
	}

	public void setOphoto(String ophoto) {
		this.ophoto = ophoto;
	}

	@Column(name = "oprice", nullable = false, precision = 10)
	public BigDecimal getOprice() {
		return this.oprice;
	}

	public void setOprice(BigDecimal oprice) {
		this.oprice = oprice;
	}
	
	@Column(name = "ocategory", nullable = false)
	public Integer getOcategory() {
		return this.ocategory;
	}

	public void setOcategory(Integer ocategory) {
		this.ocategory = ocategory;
	}
	
	@Column(name = "ostatu", nullable = false)
	public Integer getOstatu() {
		return this.ostatu;
	}

	public void setOstatu(Integer ostatu) {
		this.ostatu = ostatu;
	}
}
