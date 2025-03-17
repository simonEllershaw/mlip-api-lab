.PHONY: analysis app

app:
	python app.py

analysis:
	curl -X GET "http://localhost:3000/api/v1/analysis/" \
	     -H "Content-Type: application/json" \
	     -d '{"uri":"$(uri)"}'
