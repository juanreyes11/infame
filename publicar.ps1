param([string]$nombre)
pandoc "posts/$nombre.md" --template=template.html -o "posts/$nombre.html"
git add .
git commit -m "Compilar y publicar articulo: $nombre"
git push origin main
Write-Host "Articulo $nombre publicado con exito en GitHub Pages." -ForegroundColor Green