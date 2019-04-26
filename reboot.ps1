# -----------------------------------------------------------------------------
# Diese Skript hält den Bitlocker-Schutz für das Bootlaufwerk C: an.
# Anschließend wird der lokale Rechner neu gestartet.
# -----------------------------------------------------------------------------

$eingabe = Read-Host -Prompt "Soll der Rechner neu gestartet werden (JA = Reboot, sonst = Abbruch)?"
if ($eingabe -ceq 'JA') {
  Write-Host 'Neustart wird durchgeführt...';

  Suspend-BitLocker -MountPoint "C:" -RebootCount 1
  Restart-Computer -force
}