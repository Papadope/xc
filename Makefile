BUILD=go build
OUT_LINUX=xc
OUT_WINDOWS=xc.exe
SRC=xc.go

all: clean linux64 windows64

linux64:
	GOOS=linux GOARCH=amd64 ${BUILD} -o ${OUT_LINUX} ${SRC}

windows64:
	GOOS=windows GOARCH=amd64 ${BUILD} -o ${OUT_WINDOWS} ${SRC}

clean:
	rm -f ${OUT_LINUX} ${OUT_WINDOWS}
