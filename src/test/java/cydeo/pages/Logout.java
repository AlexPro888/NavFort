package cydeo.pages;

import cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class Logout {

    public Logout(){
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "//*[.='Logout']")
    public WebElement logOutButton;

    @FindBy(xpath = "//ul[@class='dropdown-menu']")
    public WebElement frame;

    @FindBy(className = "fa-caret-down")
    public WebElement accountName1;

    public void clickOnLogOutButton(){
        Actions action = new Actions(Driver.getDriver());
        action.moveToElement(accountName1).click();
        action.moveToElement(logOutButton).click();
    action.build();
    action.perform();
    }
}