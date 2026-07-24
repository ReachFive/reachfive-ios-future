# Guide for publication

1. Create a branch with the name of the version `x.x.x`

2. Run [update.sh](update.sh) to update the SPM dependencies
    ```shell
    ./update.sh
    ```

3. Update the [CHANGELOG.md](CHANGELOG.md) file

4. Submit and merge the pull request

5. Add git tag `x.x.x` to the merge commit
    ```sh
    git tag x.x.x
    ```

6. Push the tag
    ```sh
    git push origin x.x.x
    ```

7. The tag is the published version: SPM resolves it directly, there is nothing else to publish.

8. Finally, draft a new release in the [Github releases tab](https://github.com/ReachFive/reachfive-ios-future/releases) (copy & paste the changelog in the release's description).
