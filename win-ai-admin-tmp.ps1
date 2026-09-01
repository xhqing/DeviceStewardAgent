# Attempt: use raw System.Management .NET to read and rewrite root\cimv2 security descriptor
$SID = "S-1-5-21-305720542-2403726598-3530287391-1003"
$scope = New-Object System.Management.ManagementScope("\\.\root\cimv2")
$opts = New-Object System.Management.ObjectGetOptions
$cls = New-Object System.Management.ManagementClass($scope, [System.Management.ManagementPath]"__SystemSecurity", $opts)
$out = $cls.InvokeMethod("GetSecurityDescriptor", $null, $null)
"InvokeMethod result type: $($out.GetType().Name)"
$sdBytes = $out.Descriptor
"bytes: $($sdBytes.Length)"
