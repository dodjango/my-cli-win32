# -----------------------------------------------------------------------------
# Diese Skript h�lt den Bitlocker-Schutz f�r das Bootlaufwerk C: an.
# Anschlie�end wird der lokale Rechner neu gestartet.
# -----------------------------------------------------------------------------

$eingabe = Read-Host -Prompt "Soll der Rechner neu gestartet werden (JA = Reboot, sonst = Abbruch)?"
if ($eingabe -ceq 'JA') {
  Write-Host 'Neustart wird durchgef�hrt...';

  Suspend-BitLocker -MountPoint "C:" -RebootCount 1
  Restart-Computer -force
}