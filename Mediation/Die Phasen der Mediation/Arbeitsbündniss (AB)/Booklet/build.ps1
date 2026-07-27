# build.ps1
# Erzeugt das PDF E-Booklet aus allen Markdown-Dateien laut input-files.txt

# Input-Dateien lesen
$pandocArgs = Get-Content input-files.txt

# Baue den Argumentarray
$pandocArgList = @()
$pandocArgList += $pandocArgs
$pandocArgList += "--pdf-engine=lualatex"
$pandocArgList += "--toc"
$pandocArgList += "--toc-depth=2"
$pandocArgList += "--metadata=title=Das Arbeitsbündnis in der Mediation — systemisch gedacht"
$pandocArgList += "--metadata=author=Dr. Swetoslaw Beltschew"
$pandocArgList += "-o"
$pandocArgList += "AB_E-Booklet_Beltschew.pdf"

# Debug-Ausgabe
Write-Host "Running Pandoc with arguments:"
$pandocArgList

# Pandoc aufrufen
& pandoc @pandocArgList
