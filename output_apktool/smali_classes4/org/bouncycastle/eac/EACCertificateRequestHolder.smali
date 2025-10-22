.class public Lorg/bouncycastle/eac/EACCertificateRequestHolder;
.super Ljava/lang/Object;
.source "EACCertificateRequestHolder.java"


# instance fields
.field private request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CVCertificateRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    .line 53
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "certEncoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certEncoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->parseBytes([B)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/eac/EACCertificateRequestHolder;-><init>(Lorg/bouncycastle/asn1/eac/CVCertificateRequest;)V

    .line 48
    return-void
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
    .locals 5
    .param p0, "requestEncoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestEncoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/asn1/ASN1ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 31
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Lorg/bouncycastle/asn1/ASN1ParsingException;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 39
    :cond_0
    new-instance v2, Lorg/bouncycastle/eac/EACIOException;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 27
    .end local v1    # "e":Lorg/bouncycastle/asn1/ASN1ParsingException;
    :catch_1
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/bouncycastle/eac/EACIOException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 23
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/bouncycastle/eac/EACIOException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getPublicKeyDataObject()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getPublicKey()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    move-result-object v0

    return-object v0
.end method

.method public isInnerSignatureValid(Lorg/bouncycastle/eac/operator/EACSignatureVerifier;)Z
    .locals 5
    .param p1, "verifier"    # Lorg/bouncycastle/eac/operator/EACSignatureVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/eac/operator/EACSignatureVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 77
    .local v0, "vOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getCertificateBody()Lorg/bouncycastle/asn1/eac/CertificateBody;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 79
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 81
    iget-object v1, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getInnerSignature()[B

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/eac/operator/EACSignatureVerifier;->verify([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 83
    .end local v0    # "vOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/eac/EACException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to process signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    return-object v0
.end method
