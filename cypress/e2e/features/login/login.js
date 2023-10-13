import { Given, Then, When } from "@badeball/cypress-cucumber-preprocessor";

Given(`user is on SBX sign-in page`, () => {
  cy.visit("/users/sign_in");
});

When(`user logged in with {string} and {string}`, (userName, password) => {
  cy.get("#user_email").type(userName);
  cy.get("#user_password").type(password);
  cy.get("input[name='commit']").click();
});

Then(`user login successful {string}`, (message) => {
  cy.get(".alert.alert-success").should("contain", message);
});

Then(`user login failure {string}`, (message) => {
  cy.get(".alert.alert-danger").should("contain", message);
});
