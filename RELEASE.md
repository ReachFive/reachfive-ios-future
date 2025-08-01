# Guide for publication

1. Create a branch with the name of the version `x.x.x`

2. Change the version in [version.rb](version.rb) file
    ```ruby
    $VERSION = 'x.x.x'
    ```
3. Run [update.sh](update.sh) to install the new version of this library and update the dependencies in Cocoapod and SPM
    ```shell
    ./update.sh
    ```

4. Update the [CHANGELOG.md](CHANGELOG.md) file

5. Submit and merge the pull request

6. Add git tag `x.x.x` to the merge commit
    ```sh
    git tag x.x.x
    ```

7. Push the tag
    ```sh
    git push origin x.x.x
    ```

8. The CI will automatically publish this new version

9. Finally, draft a new release in the [Github releases tab](https://github.com/ReachFive/reachfive-ios-future/releases) (copy & paste the changelog in the release's description).
