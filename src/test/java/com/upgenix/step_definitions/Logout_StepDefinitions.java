package com.upgenix.step_definitions;

import com.upgenix.pages.LoginPage;
import com.upgenix.pages.LogoutPage;
import com.upgenix.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Logout_StepDefinitions {

    LoginPage loginPage = new LoginPage();
    LogoutPage logoutPage =new LogoutPage();

    @Given("User navigates to Login Page")
    public void user_navigates_to_login_page() {
        Driver.getDriver().get("https://qa.upgenix.net/web/login");
        loginPage.emailBox.sendKeys("posmanager20@info.com");
        loginPage.passwordBox.sendKeys("posmanager");
        loginPage.loginButton.click();
    }
    @When("User clicks the username")
    public void user_clicks_the_username() {
        //WebDriverWait wait = new WebDriverWait(Driver.getDriver(), 10);
        //wait.until(ExpectedConditions.visibilityOf(logoutPage.usernameButton));
        logoutPage.usernameButton.click();

    }
    @When("User clicks logout option from the dropdown menu")
    public void user_clicks_logout_option_from_the_dropdown_menu() {
        logoutPage.logOutButton.click();
    }

    @Then("User clicks on the Step Back button")
    public void user_clicks_on_the_step_back_button() {
        Driver.getDriver().navigate().back();
    }
    @Then("User sees session expired message")
    public void user_sees_session_expired_message() {
        Assert.assertTrue(logoutPage.sessionExpiredMessage.isDisplayed());
    }


}
