package com.upgenix.pages;

import com.upgenix.utilities.BrowserUtils;
import com.upgenix.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LogoutPage {

    public LogoutPage (){
        PageFactory.initElements(Driver.getDriver(), this);
    }


    @FindBy(xpath = "//span[@class='oe_topbar_name']")
    public WebElement usernameButton;

    @FindBy(xpath = "//a[.='Log out']")
    public WebElement logOutButton;

    @FindBy(xpath = "//div[@class='o_dialog_warning modal-body']")
    public WebElement sessionExpiredMessage;



}
