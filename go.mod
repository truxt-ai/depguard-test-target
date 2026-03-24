module github.com/test/depguard-target

go 1.19

require (
	// CVE: multiple high-severity vulnerabilities in gin < 1.9.0
	github.com/gin-gonic/gin v1.7.0

	// CVE: golang.org/x/net has multiple CVEs in old versions (HTTP/2, HTML parser)
	golang.org/x/net v0.0.0-20210405180319-a5a99cb37ef4

	// CVE: CRITICAL — dgrijalva/jwt-go is DEPRECATED, replaced by golang-jwt/jwt
	// No upgrade path in same module → triggers UNRESOLVABLE + Telegram alert
	github.com/dgrijalva/jwt-go v3.2.0+incompatible

	// CVE: yaml.v2 has vulnerabilities in old versions
	gopkg.in/yaml.v2 v2.2.2

	// Safe upgrade available — tests SAFE PR
	github.com/gorilla/mux v1.7.0

	// CVE: logrus has some older CVEs
	github.com/sirupsen/logrus v1.4.0

	// CVE: golang.org/x/crypto old versions have multiple CVEs
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9

	// CVE: containerd old versions have multiple critical CVEs
	github.com/containerd/containerd v1.4.0

	// CVE: grpc-go old versions vulnerability
	google.golang.org/grpc v1.38.0

	// CVE: runc old versions have container escape CVEs
	github.com/opencontainers/runc v1.0.0-rc93

	// Safe: just outdated, no CVE but large version gap
	github.com/pkg/errors v0.9.0

	// CVE: github.com/prometheus/client_golang old versions
	github.com/prometheus/client_golang v1.9.0
)

require (
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-playground/validator/v10 v10.4.1 // indirect
)
