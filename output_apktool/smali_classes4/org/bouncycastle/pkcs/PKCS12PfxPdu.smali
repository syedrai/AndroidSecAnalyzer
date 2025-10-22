.class public Lorg/bouncycastle/pkcs/PKCS12PfxPdu;
.super Ljava/lang/Object;
.source "PKCS12PfxPdu.java"


# instance fields
.field private pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/Pfx;)V
    .locals 0
    .param p1, "pfx"    # Lorg/bouncycastle/asn1/pkcs/Pfx;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pfx"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;

    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "pfx"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pfx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->parseBytes([B)Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;-><init>(Lorg/bouncycastle/asn1/pkcs/Pfx;)V

    .line 48
    return-void
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/pkcs/Pfx;
    .locals 5
    .param p0, "pfxEncoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pfxEncoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 33
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/bouncycastle/pkcs/PKCSIOException;

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

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 29
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/bouncycastle/pkcs/PKCSIOException;

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

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getContentInfos()[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 4

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 58
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    .line 60
    .local v1, "content":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 62
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v0

    .line 87
    .local v0, "md":Lorg/bouncycastle/asn1/pkcs/MacData;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    return-object v1

    .line 92
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasMac()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMacValid(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilderProvider;[C)Z
    .locals 7
    .param p1, "macCalcProviderBuilder"    # Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilderProvider;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "macCalcProviderBuilder",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->hasMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v0

    .line 110
    .local v0, "pfxmData":Lorg/bouncycastle/asn1/pkcs/MacData;
    new-instance v1, Lorg/bouncycastle/pkcs/MacDataGenerator;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {p1, v2}, Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilderProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/pkcs/MacDataGenerator;-><init>(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;)V

    .line 114
    .local v1, "mdGen":Lorg/bouncycastle/pkcs/MacDataGenerator;
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;

    .line 116
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 114
    invoke-virtual {v1, p2, v2}, Lorg/bouncycastle/pkcs/MacDataGenerator;->build([C[B)Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v2

    .line 118
    .local v2, "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/MacData;->getEncoded()[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/MacData;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 120
    .end local v2    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/pkcs/PKCSException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to process AuthSafe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    .end local v0    # "pfxmData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .end local v1    # "mdGen":Lorg/bouncycastle/pkcs/MacDataGenerator;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no MAC present on PFX"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/pkcs/Pfx;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;->pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;

    return-object v0
.end method
