.class public Lorg/bouncycastle/its/ITSCertificate;
.super Ljava/lang/Object;
.source "ITSCertificate.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private final certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;)V
    .locals 0
    .param p1, "certificate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificate"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    .line 25
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateBase:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getPublicEncryptionKey()Lorg/bouncycastle/its/ITSPublicEncryptionKey;
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getEncryptionKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    move-result-object v0

    .line 46
    .local v0, "encryptionKey":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Lorg/bouncycastle/its/ITSPublicEncryptionKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)V

    return-object v1

    .line 51
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getValidityPeriod()Lorg/bouncycastle/its/ITSValidityPeriod;
    .locals 2

    .line 34
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getValidityPeriod()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/its/ITSValidityPeriod;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;)V

    return-object v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;)Z
    .locals 4
    .param p1, "verifierProvider"    # Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;->getChoice()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    .line 59
    .local v0, "contentVerifier":Lorg/bouncycastle/operator/ContentVerifier;
    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 62
    .local v1, "verOut":Ljava/io/OutputStream;
    iget-object v2, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    .line 63
    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 64
    invoke-virtual {v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v3

    .line 63
    invoke-static {v2, v3}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 66
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 68
    iget-object v2, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v2

    .line 70
    .local v2, "sig":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    invoke-static {v2}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toX962(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)[B

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v3

    return v3
.end method

.method public toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificate;->certificate:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    return-object v0
.end method
