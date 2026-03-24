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
)

require (
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-playground/validator/v10 v10.4.1 // indirect
)
