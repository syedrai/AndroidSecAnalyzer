.class public Lorg/bouncycastle/asn1/eac/CertificateHolderReference;
.super Ljava/lang/Object;
.source "CertificateHolderReference.java"


# static fields
.field private static final ReferenceEncoding:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private holderMnemonic:Ljava/lang/String;

.field private sequenceNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "holderMnemonic"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "countryCode",
            "holderMnemonic",
            "sequenceNumber"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->countryCode:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->holderMnemonic:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->sequenceNumber:Ljava/lang/String;

    .line 18
    return-void
.end method

.method constructor <init>([B)V
    .locals 3
    .param p1, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 26
    .local v0, "concat":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->countryCode:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->holderMnemonic:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->sequenceNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "concat":Ljava/lang/String;
    nop

    .line 35
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->countryCode:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->holderMnemonic:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->sequenceNumber:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "ref":Ljava/lang/String;
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 61
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getHolderMnemonic()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->holderMnemonic:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CertificateHolderReference;->sequenceNumber:Ljava/lang/String;

    return-object v0
.end method
