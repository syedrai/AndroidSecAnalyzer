.class public Lorg/bouncycastle/asn1/DERBitString;
.super Lorg/bouncycastle/asn1/ASN1BitString;
.source "DERBitString.java"


# direct methods
.method public constructor <init>(BI)V
    .locals 0
    .param p1, "data"    # B
    .param p2, "padBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "padBits"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 41
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 19
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "padBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "padBits"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 29
    return-void
.end method

.method constructor <init>([BZ)V
    .locals 0
    .param p1, "contents"    # [B
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contents",
            "check"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 46
    return-void
.end method

.method public static convert(Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/asn1/DERBitString;
    .locals 1
    .param p0, "bitString"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitString"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method static fromOctetString(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/asn1/DERBitString;
    .locals 3
    .param p0, "octetString"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octetString"
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 11
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

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 61
    .local v0, "padBits":I
    iget-object v2, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    array-length v2, v2

    .line 62
    .local v2, "length":I
    add-int/lit8 v8, v2, -0x1

    .line 64
    .local v8, "last":I
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    aget-byte v10, v3, v8

    .line 65
    .local v10, "lastOctet":B
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    aget-byte v3, v3, v8

    shl-int/2addr v1, v0

    and-int/2addr v1, v3

    int-to-byte v9, v1

    .line 67
    .local v9, "lastOctetDER":B
    if-ne v10, v9, :cond_0

    .line 69
    const/4 v1, 0x3

    iget-object v3, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    invoke-virtual {p1, p2, v1, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    move-object v3, p1

    move v4, p2

    goto :goto_0

    .line 73
    :cond_0
    iget-object v6, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    const/4 v7, 0x0

    const/4 v5, 0x3

    move-object v3, p1

    move v4, p2

    .end local p1    # "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    .end local p2    # "withTag":Z
    .local v3, "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    .local v4, "withTag":Z
    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[BIIB)V

    .line 75
    :goto_0
    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
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

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 79
    return-object p0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 84
    return-object p0
.end method
