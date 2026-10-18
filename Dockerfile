FROM golang:1.27.2
ADD . /go/src/github.com/PagerDuty/go-pagerduty
WORKDIR /go/src/github.com/PagerDuty/go-pagerduty
RUN go mod download && go test -v -race -cover ./...
