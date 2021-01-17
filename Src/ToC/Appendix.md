# Appendix

## Docker Script
This docker script will pull a Business Central container into a Docker Instance.

````ps
$artifactUrl = Get-BCArtifactUrl -country us -select Latest
$licenseFile = '<path><fileName>'
$ContainerName = '<local container name>' # should be the same as the ServerName in launch.json for the app
$UserName = '<userName>' 
$Password = ConvertTo-SecureString '<password>' -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($UserName, $Password)


New-BCContainer `
    -accept_eula `
    -containerName $ContainerName `
    -artifactUrl $artifactUrl `
    -licenseFile $licenseFile `
    -auth NavUserPassword `
    -updateHosts `
    -Credential $Credential #`
    -alwaysPull `
    -includeTestToolkit

````
<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note</dt>
<dd>Replace anything surrounded by angle brackets "<>" with valid content.</dd>
</dl>