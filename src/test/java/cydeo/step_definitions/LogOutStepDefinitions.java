package cydeo.step_definitions;

import cydeo.pages.LogIn;
import cydeo.pages.Logout;
import cydeo.utilities.BrowserUtils;
import cydeo.utilities.ConfigurationReader;
import cydeo.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LogOutStepDefinitions {

    LogIn login = new LogIn();
    Logout logout = new Logout();

    @Given("The user is on the dashboard page")
    public void the_user_is_on_the_dashboard_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("web.table.url"));
        login.loginWithCredentials("user1", "UserUser123");
    }

    @When("The user clicks on his username")
    public void the_user_clicks_on_his_username() {
        login.accountName.click();
    }


    @When("The user clicks on Logout button")
    public void the_user_clicks_on_logout_button() {
       logout.logOutButton.click();

    }

    @Then("The user can not go to the home page again by clicking the step back button")
    public void the_user_can_not_go_to_the_home_page_again_by_clicking_the_step_back_button() {
BrowserUtils.waitFor(2);
            Driver.getDriver().navigate().back();
    }


}
