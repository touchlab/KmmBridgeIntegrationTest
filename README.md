# KmmBridgeIntegrationTest

This is a test project for [KMMBridge](https://github.com/touchlab/KMMBridge/) integration testing. If you're looking
for help with KMMBridge, the projects linked [in the docs](https://touchlab.github.io/KMMBridge/intro/#sample-projects)
are better references than this project.

# Notes for maintainers

This repo is a test case that's run as part of the KMMBridge integration test workflow. It contains a `shared` KMM
module with the KMMBridge plugin applied, as well as Cocoapods and SPM projects that point to the binary that `shared`
publishes.

Note that this project consumes a version `"999"` of the plugin. This is not a real version, but it will be published to
mavenLocal as part of the integration test workflow.

## Adding a new test case

1. Clone this repo
2. Make whatever config changes are needed for the new test case
3. Ensure that Touchlab-Bot has write access to the cloned repo
4. Generate a new SSH keypair. Make sure the comment matches the ssh url of the new repo, and don't set a passphrase.  
   `ssh-keygen -t ed25519 -f <filename> -C "git@github.com:touchlab/<repo-name>.git"`
5. Add the public key of your newly created keypair as a Deploy Key to this repo. Make sure to check "Allow write
   access"
6. Add the private key of your newly created keypair as an Actions secret in the KMMBridge repo
7. Edit the `integration-tests.yml` workflow on KMMBridge
    - Add the new repo to the `sample` array
        ```yaml
        strategy:
          matrix:
            sample: [ KmmBridgeIntegrationTest, ..., <repo-name> ]
        ```
    - Add the new SSH key to the ssh-agent action
        ```yaml
        - name: Apply SSH Key
          uses: webfactory/ssh-agent@v0.5.4
          with:
            ssh-private-key: |
              ${{ secrets.PODSPEC_SSH_KEY }}
              ${{ secrets.INTEGRATION_TEST_MAVEN_PUBLISH_SSH_KEY }}
              ${{ secrets.<new SSH key secret> }}
        ```
    - Depending on the test case, you might also need to add a new `extractions/netrc` action to configure netrc
      correctly for the new test.

