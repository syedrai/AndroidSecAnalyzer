.class public Lorg/bouncycastle/asn1/DERGeneralizedTime;
.super Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
.source "DERGeneralizedTime.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    .line 36
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "time"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    .line 31
    return-void
.end method

.method private getDERTime()[B
    .locals 6

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_5

    .line 47
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->hasMinutes()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 51
    .local v0, "derTime":[B
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    iget-object v3, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    const-string v1, "0000Z"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x5

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-object v0

    .line 56
    .end local v0    # "derTime":[B
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->hasSeconds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 60
    .restart local v0    # "derTime":[B
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    iget-object v3, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    const-string v1, "00Z"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x3

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    return-object v0

    .line 65
    .end local v0    # "derTime":[B
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->hasFractionalSeconds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 68
    .local v0, "ind":I
    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    .line 70
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 73
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_3

    .line 75
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    .line 77
    .local v3, "derTime":[B
    iget-object v4, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    aput-byte v1, v3, v0

    .line 80
    return-object v3

    .line 84
    .end local v3    # "derTime":[B
    :cond_3
    add-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    .line 86
    .restart local v3    # "derTime":[B
    iget-object v4, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, v3, v2

    .line 89
    return-object v3

    .line 94
    .end local v0    # "ind":I
    .end local v3    # "derTime":[B
    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    return-object v0

    .line 99
    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;->contents:[B

    return-object v0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Lorg/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "withTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/16 v0, 0x18

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 111
    return-void
.end method

.method encodedLength(Z)I
    .locals 1
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withTag"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 115
    return-object p0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 120
    return-object p0
.end method
