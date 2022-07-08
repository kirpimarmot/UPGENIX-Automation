package com.upgenix.step_definitions;

import com.upgenix.pages.LoginPage;
import com.upgenix.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

public class Login_StepDefinitions {

    LoginPage loginPage = new LoginPage();

    @Given("User is on the Upgenix login page")
    public void user_is_on_the_upgenix_login_page() {
        Driver.getDriver().get("https://qa.upgenix.net/web/login");
    }

    @When("User enters valid email address {string} into email input box")
    public void userEntersValidEmailAddressIntoEmailInputBox(String email) {
        loginPage.emailBox.sendKeys(email);
    }

    @And("User enters valid password {string} into password input box")
    public void userEntersValidPasswordIntoPasswordInputBox(String password) {
        loginPage.passwordBox.sendKeys(password);
    }

    @And("User clicks the login button")
    public void userClicksTheLoginButton() {
        loginPage.loginButton.click();
    }

    @Then("User login to the app successfully and very title {string}")
    public void userLoginToTheAppSuccessfullyAndVeryTitle(String arg0) {
        Assert.assertTrue(Driver.getDriver().getTitle().equals("Odoo"));
    }

    @And("User enters invalid password {string} into password input box")
    public void userEntersInvalidPasswordIntoPasswordInputBox(String password) {
        loginPage.passwordBox.sendKeys(password);
    }

    @When("User enters invalid email address {string} into email input box")
    public void userEntersInvalidEmailAddressIntoEmailInputBox(String email) {
        loginPage.emailBox.sendKeys(email);
    }

    @Then("User sees Wrong login-password message above the Log in button")
    public void userSeesWrongLoginPasswordMessageAboveTheLogInButton() {
        Assert.assertTrue(loginPage.errorMessage.isDisplayed());
    }


    @Then("Please fill out this field message should be displayed")
    public void pleaseFillOutThisFieldMessageShouldBeDisplayed() {
        Assert.assertTrue(Driver.getDriver().findElement(By.id("password")).getAttribute("validationMessage").equalsIgnoreCase("Please fill out this field."));
    }

    @Given("User clicks on the Reset Password link")
    public void userClicksOnTheResetPasswordLink() {
        loginPage.resetPasswordLink.click();
    }

    @Then("User navigates to Reset Password page")
    public void userNavigatesToResetPasswordPage() {
        Assert.assertTrue(Driver.getDriver().getTitle().contains("Reset password"));
    }


    @Then("User sees the password in bullet signs")
    public void userSeesThePasswordInBulletSigns() {
        Assert.assertTrue(loginPage.passwordBox.getAttribute("type").equals("password"));
    }

    @When("User enters valid email {string} - password {string} and hits enter")
    public void userEntersValidEmailPasswordAndHitsEnter(String email, String password) {
        loginPage.emailBox.sendKeys(email);
        loginPage.passwordBox.sendKeys(password+ Keys.ENTER);
    }


}
