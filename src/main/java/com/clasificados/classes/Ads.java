/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clasificados.classes;

/**
 *
 * @author poliveros
 */
public class Ads {
    private int idAd;
    private String publicationDate;
    private String brand;
    private String model;
    private String title;
    private String price;
    private String mileage;
    private String gas;
    private String transmission;
    private String color;
    private String condition;
    private String dateFabricate;
    private String description;
    private String conditionForSale;
    private String state_location;
    private String city_location;
    private String phone1;
    private String phone2;
    private String image;

    public Ads(int idAd, String publicationDate, String brand, String model, String title, String price, String mileage, String gas, String transmission, String color, String condition, String dateFabricate, String description, String conditionForSale, String state_location, String city_location, String phone1, String phone2, String image) {
        this.idAd = idAd;
        this.publicationDate = publicationDate;
        this.brand = brand;
        this.model = model;
        this.title = title;
        this.price = price;
        this.mileage = mileage;
        this.gas = gas;
        this.transmission = transmission;
        this.color = color;
        this.condition = condition;
        this.dateFabricate = dateFabricate;
        this.description = description;
        this.conditionForSale = conditionForSale;
        this.state_location = state_location;
        this.city_location = city_location;
        this.phone1 = phone1;
        this.phone2 = phone2;
        this.image = image;
    }

    public int getIdAd() {
        return idAd;
    }

    public void setIdAd(int idAd) {
        this.idAd = idAd;
    }

    public String getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(String publicationDate) {
        this.publicationDate = publicationDate;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getMileage() {
        return mileage;
    }

    public void setMileage(String mileage) {
        this.mileage = mileage;
    }

    public String getGas() {
        return gas;
    }

    public void setGas(String gas) {
        this.gas = gas;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getDateFabricate() {
        return dateFabricate;
    }

    public void setDateFabricate(String dateFabricate) {
        this.dateFabricate = dateFabricate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getConditionForSale() {
        return conditionForSale;
    }

    public void setConditionForSale(String conditionForSale) {
        this.conditionForSale = conditionForSale;
    }

    public String getState_location() {
        return state_location;
    }

    public void setState_location(String state_location) {
        this.state_location = state_location;
    }

    public String getCity_location() {
        return city_location;
    }

    public void setCity_location(String city_location) {
        this.city_location = city_location;
    }

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1;
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}
