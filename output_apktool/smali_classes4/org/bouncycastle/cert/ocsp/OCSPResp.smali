.class public Lorg/bouncycastle/cert/ocsp/OCSPResp;
.super Ljava/lang/Object;
.source "OCSPResp.java"


# static fields
.field public static final INTERNAL_ERROR:I = 0x2

.field public static final MALFORMED_REQUEST:I = 0x1

.field public static final SIG_REQUIRED:I = 0x5

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_LATER:I = 0x3

.field public static final UNAUTHORIZED:I = 0x6


# instance fields
.field private resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "resp"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 5
    .param p1, "aIn"    # Lorg/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aIn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const-string v0, "malformed response: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    nop

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 71
    :cond_0
    new-instance v0, Lorg/bouncycastle/cert/CertIOException;

    const-string v1, "malformed response: no response data found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lorg/bouncycastle/asn1/ASN1Exception;
    new-instance v2, Lorg/bouncycastle/cert/CertIOException;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 60
    .end local v1    # "e":Lorg/bouncycastle/asn1/ASN1Exception;
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/bouncycastle/cert/CertIOException;

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

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 56
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/bouncycastle/cert/CertIOException;

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

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)V
    .locals 0
    .param p1, "resp"    # Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resp"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    .line 32
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "resp"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>(Ljava/io/InputStream;)V

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 117
    if-ne p1, p0, :cond_0

    .line 119
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    .line 129
    .local v0, "r":Lorg/bouncycastle/cert/ocsp/OCSPResp;
    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    iget-object v2, v0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    .line 85
    .local v0, "rb":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    if-nez v0, :cond_0

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponseType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 95
    .local v1, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    new-instance v2, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-static {v1}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 97
    .end local v1    # "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem decoding object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    return-object v1
.end method

.method public getStatus()I
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getIntValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;->resp:Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    return-object v0
.end method
