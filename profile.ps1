#This file is to be placed in your $HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

function startnote {
    notepad $HOME\Documents\blank.txt
}

function testme {
    param (
        [Parameter(Mandatory, Position=0)]
        [string] $url,
        [Parameter(Mandatory=$true, Position=1)]
        [int] $id
    )
    echo "Your url: $url"
    echo "Your Id: $id"
}

# Examples:
    # 1.`testme -id 12345 -url example.com`
    # 2.`testme -url example.com -id 12345`
    # 3. `testme example.com 12345`
    # Note: that examples 1 through 3 accomplish the same thing. Order does not matter if the param is specified as in example 1.
    # 4. `testme 12345 example.com`
    # Note: 4 will fail because of the lack of the param name and the positional arguments being out of order.
