
views=( download examples )

curl http://localhost:8888/ > index.html
for view in "${views[@]}"
do
    mkdir -p $view
    curl http://localhost:8888/$view > $view/index.html
done

files=( js/base.js css/base.css images/logo.png images/favicon.png )
for file in "${files[@]}"
do
    mkdir -p $(dirname $file)
    curl http://localhost:8888/$file > $file
done

cat src/static/css/highlight.css >> css/base.css

