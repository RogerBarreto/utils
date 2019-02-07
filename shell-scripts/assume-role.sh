#original credentials

#apk add --no-cache python py-pip
#pip install awscli

unset  AWS_SESSION_TOKEN
export AWS_ACCESS_KEY_ID= <AWS_ACCESS_KEY_ID>
export AWS_SECRET_ACCESS_KEY= <AWS_SECRET_ACCESS_KEY>

temprole=$(aws sts assume-role --role-arn "$AWS_INFRAESTRUCTURE_ARN" --role-session-name AWS)

export AWS_ACCESS_KEY_ID=$(echo $temprole | sed -n 's/.*\(AccessKeyId\)": "\([^"]*\).*/\2/p'
export AWS_SECRET_ACCESS_KEY=$(echo $temprole | sed -n 's/.*\(SecretAccessKey\)": "\([^"]*\).*/\2/p')"
export AWS_SESSION_TOKEN=$(echo $temprole | sed -n 's/.*\(SessionToken\)": "\([^"]*\).*/\2/p')"

#assumed credentials (for further awscli commands)

