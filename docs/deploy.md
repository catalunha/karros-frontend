# merge
Fazer merge das issues para o dev

# Atualizar dart_define
Configurar o arquivo dart_define.json com os valores que deseja:
  "version": <add + 1>,
  "development_mode": false,

# Gerar build web
Na branch dev executar

catalunha@pop-os:~/apps/proclinicakids.com.br/fluxus5$ 
flutter build web --web-renderer canvaskit --dart-define-from-file=dart_define.json

# commit dev
git add .
git commit -m 'dev fluxusVersion'

# merge em main
git checkout main
git merge dev
git push origin main


servidor ja inicia autobuild
