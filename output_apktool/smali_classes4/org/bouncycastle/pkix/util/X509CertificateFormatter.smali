.class public Lorg/bouncycastle/pkix/util/X509CertificateFormatter;
.super Ljava/lang/Object;
.source "X509CertificateFormatter.java"


# static fields
.field private static extUsageMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/KeyPurposeId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static keyAlgMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static oidMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final spaceStr:Ljava/lang/String; = "                                                              "

.field private static usageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    .line 40
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectDirectoryAttributes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "subjectDirectoryAttributes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "subjectKeyIdentifier"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "keyUsage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->privateKeyUsagePeriod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "privateKeyUsagePeriod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "subjectAlternativeName"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "issuerAlternativeName"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "basicConstraints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "cRLNumber"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "reasonCode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->instructionCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "instructionCode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->invalidityDate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "invalidityDate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "deltaCRLIndicator"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "issuingDistributionPoint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "certificateIssuer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->nameConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "nameConstraints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "cRLDistributionPoints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "certificatePolicies"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->policyMappings:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "policyMappings"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "authorityKeyIdentifier"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->policyConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "policyConstraints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "extendedKeyUsage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "freshestCRL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "inhibitAnyPolicy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "authorityInfoAccess"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "subjectInfoAccess"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->logoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "logoType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->biometricInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "biometricInfo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->qCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "qCStatements"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->auditIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "auditIdentity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->noRevAvail:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "noRevAvail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "targetInformation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->expiredCertsOnCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "expiredCertsOnCRL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "digitalSignature"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nonRepudiation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyEncipherment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dataEncipherment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyAgreement"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyCertSign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cRLSign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encipherOnly"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "decipherOnly"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "anyExtendedKeyUsage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_serverAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_clientAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_codeSigning:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_codeSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_emailProtection:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_emailProtection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecEndSystem:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_ipsecEndSystem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecTunnel:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_ipsecTunnel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecUser:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_ipsecUser"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_timeStamping:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_timeStamping"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_OCSPSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_dvcs:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_dvcs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_sbgpCertAAServerAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_sbgpCertAAServerAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvp_responder:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_scvp_responder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverPPP:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_eapOverPPP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverLAN:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_eapOverLAN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpServer:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_scvpServer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpClient:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_scvpClient"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecIKE:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_ipsecIKE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapAC:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_capwapAC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapWTP:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_capwapWTP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_cmcCA:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_cmcCA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_cmcRA:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_cmcRA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_cmKGA:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_cmKGA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_smartcardlogon:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_smartcardlogon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_macAddress:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_macAddress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_msSGC:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_msSGC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_nsSGC:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_nsSGC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "rsaEncryption"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "id_ecPublicKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "id_Ed25519"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "id_Ed448"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/lang/String;
    .locals 19
    .param p0, "certHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certHolder"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .line 209
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "nl":Ljava/lang/String;
    new-instance v0, Lorg/bouncycastle/operator/DefaultSignatureNameFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultSignatureNameFinder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/operator/DefaultSignatureNameFinder;->getAlgorithmName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "sigAlgorithm":Ljava/lang/String;
    const-string v3, "WITH"

    const-string/jumbo v4, "with"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .end local v0    # "sigAlgorithm":Ljava/lang/String;
    .local v3, "sigAlgorithm":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgToLabel(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "pubKeyAlgorithm":Ljava/lang/String;
    const-string v0, "  [0]         Version: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getVersionNumber()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v0, "         SerialNumber: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v0, "             IssuerDN: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v0, "           Start Date: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getNotBefore()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, "           Final Date: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v0, "            SubjectDN: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v0, "           Public Key: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, "                       "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->prettyPrintData([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    .line 229
    .local v5, "extensions":Lorg/bouncycastle/asn1/x509/Extensions;
    if-eqz v5, :cond_d

    .line 231
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v6

    .line 233
    .local v6, "e":Ljava/util/Enumeration;
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "           Extensions: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 241
    .local v7, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v8

    .line 243
    .local v8, "ext":Lorg/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 245
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v9

    .line 246
    .local v9, "octs":[B
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v9}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    move-object v10, v0

    .line 247
    .local v10, "dIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    const-string v11, "                       "

    .line 250
    .local v11, "pad":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidToLabel(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v12, ": critical("

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->spaces(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 254
    sget-object v12, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v12, :cond_2

    .line 256
    :try_start_1
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v12

    .line 258
    .local v12, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "label":Ljava/lang/String;
    .local v16, "label":Ljava/lang/String;
    const-string v0, "isCA : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->spaces(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pathLenConstraint : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    .end local v12    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :cond_1
    move-object/from16 v18, v4

    goto/16 :goto_6

    .line 319
    .end local v16    # "label":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_7

    .line 265
    .restart local v0    # "label":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "label":Ljava/lang/String;
    .restart local v16    # "label":Ljava/lang/String;
    :try_start_2
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v12, ", "

    if-eqz v0, :cond_6

    .line 267
    :try_start_3
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v0

    .line 269
    .local v0, "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/4 v13, 0x1

    .line 271
    .local v13, "first":Z
    sget-object v14, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 273
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 274
    .local v15, "bit":I
    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/x509/KeyUsage;->hasUsages(I)Z

    move-result v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v17, :cond_4

    .line 276
    if-nez v13, :cond_3

    .line 278
    :try_start_4
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 282
    :cond_3
    const/4 v13, 0x0

    .line 284
    :goto_2
    move-object/from16 v17, v0

    .end local v0    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .local v17, "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    :try_start_5
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v18, v4

    .end local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    .local v18, "pubKeyAlgorithm":Ljava/lang/String;
    :try_start_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 274
    .end local v17    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .end local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v0    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .restart local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    .line 286
    .end local v0    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .end local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    .end local v15    # "bit":I
    .restart local v17    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .restart local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v4, v18

    goto :goto_1

    .line 271
    .end local v17    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .end local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v0    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .restart local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    .line 287
    .end local v0    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .end local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v17    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    .restart local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    nop

    .end local v13    # "first":Z
    .end local v17    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    goto/16 :goto_6

    .line 289
    .end local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v4

    .end local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 291
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;

    move-result-object v0

    .line 293
    .local v0, "usage":Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/4 v4, 0x1

    .line 295
    .local v4, "first":Z
    sget-object v13, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/asn1/x509/KeyPurposeId;>;"
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 297
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 298
    .local v14, "purpose":Lorg/bouncycastle/asn1/x509/KeyPurposeId;
    invoke-virtual {v0, v14}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->hasKeyPurposeId(Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 300
    if-nez v4, :cond_7

    .line 302
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 306
    :cond_7
    const/4 v4, 0x0

    .line 308
    :goto_5
    sget-object v15, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .end local v14    # "purpose":Lorg/bouncycastle/asn1/x509/KeyPurposeId;
    :cond_8
    goto :goto_4

    .line 311
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/asn1/x509/KeyPurposeId;>;"
    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    nop

    .end local v0    # "usage":Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .end local v4    # "first":Z
    goto :goto_6

    .line 315
    :cond_a
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "value = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->spaces(I)Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12, v2}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->indent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 324
    .end local v16    # "label":Ljava/lang/String;
    :goto_6
    goto :goto_8

    .line 319
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    .local v4, "pubKeyAlgorithm":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    .line 321
    .end local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    :goto_7
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v4, " value = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, "*****"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v9    # "octs":[B
    .end local v10    # "dIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v11    # "pad":Ljava/lang/String;
    :goto_8
    goto :goto_9

    .line 328
    .end local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    :cond_b
    move-object/from16 v18, v4

    .end local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .end local v7    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v8    # "ext":Lorg/bouncycastle/asn1/x509/Extension;
    :goto_9
    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 238
    .end local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    :cond_c
    move-object/from16 v18, v4

    .end local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    goto :goto_a

    .line 229
    .end local v6    # "e":Ljava/util/Enumeration;
    .end local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    :cond_d
    move-object/from16 v18, v4

    .line 333
    .end local v4    # "pubKeyAlgorithm":Ljava/lang/String;
    .restart local v18    # "pubKeyAlgorithm":Ljava/lang/String;
    :goto_a
    const-string v0, "  Signature Algorithm: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v0, "            Signature: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignature()[B

    move-result-object v0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->prettyPrintData([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static format(Ljava/lang/StringBuilder;[BLjava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "data"    # [B
    .param p2, "nl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "data",
            "nl"
        }
    .end annotation

    .line 191
    const/16 v0, 0x14

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 193
    array-length v1, p1

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    const-string v3, "                       "

    if-ge v0, v1, :cond_0

    .line 196
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 201
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :goto_1
    add-int/lit8 v0, v0, 0x14

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static indent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pad"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "nl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pad",
            "detail",
            "nl"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "bld":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 151
    .local v1, "last":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .local v3, "index":I
    if-lez v2, :cond_1

    .line 154
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 165
    return-object p1

    .line 169
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static keyAlgToLabel(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 2
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 130
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, "oidStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 133
    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    new-instance v0, Lorg/bouncycastle/openssl/PEMParser;

    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    .line 347
    .local v0, "p":Lorg/bouncycastle/openssl/PEMParser;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/bouncycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-static {v2}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->asString(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method private static oidToLabel(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 2
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 119
    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, "oidStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static prettyPrintData([BLjava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p0, "sig"    # [B
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "nl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "buf",
            "nl"
        }
    .end annotation

    .line 176
    array-length v0, p0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 179
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {p1, p0, p2}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->format(Ljava/lang/StringBuilder;[BLjava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :goto_0
    return-void
.end method

.method private static spaces(I)Ljava/lang/String;
    .locals 2
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 143
    const-string v0, "                                                              "

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
