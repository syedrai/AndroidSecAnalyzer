.class public Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
.super Ljava/lang/Object;
.source "ProofOfPossessionSigningKeyBuilder.java"


# instance fields
.field private certRequest:Lorg/bouncycastle/asn1/crmf/CertRequest;

.field private name:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertRequest;)V
    .locals 0
    .param p1, "certRequest"    # Lorg/bouncycastle/asn1/crmf/CertRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certRequest"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->certRequest:Lorg/bouncycastle/asn1/crmf/CertRequest;

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "pubKeyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKeyInfo"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 28
    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;
    .locals 5
    .param p1, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->name:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "name and publicKeyMAC cannot both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->certRequest:Lorg/bouncycastle/asn1/crmf/CertRequest;

    if-eqz v0, :cond_2

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "popo":Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->certRequest:Lorg/bouncycastle/asn1/crmf/CertRequest;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 60
    .end local v0    # "popo":Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->name:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_3

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->name:Lorg/bouncycastle/asn1/x509/GeneralName;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 64
    .restart local v0    # "popo":Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 68
    .end local v0    # "popo":Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;
    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;-><init>(Lorg/bouncycastle/asn1/crmf/PKMACValue;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 70
    .restart local v0    # "popo":Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    .line 73
    :goto_1
    new-instance v1, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;-><init>(Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object v1
.end method

.method public setPublicKeyMac(Lorg/bouncycastle/cert/crmf/PKMACBuilder;[C)Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    .locals 1
    .param p1, "builder"    # Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;->generate(Lorg/bouncycastle/cert/crmf/PKMACBuilder;[CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    .line 42
    return-object p0
.end method

.method public setSender(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    .locals 0
    .param p1, "name"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->name:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 34
    return-object p0
.end method
