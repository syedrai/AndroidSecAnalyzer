.class public Lorg/bouncycastle/asn1/x9/X9ECPoint;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "X9ECPoint.java"


# instance fields
.field private c:Lorg/bouncycastle/math/ec/ECCurve;

.field private final encoding:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private p:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "c"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p2, "s"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "s"
        }
    .end annotation

    .line 42
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V
    .locals 2
    .param p1, "c"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "encoding"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->c:Lorg/bouncycastle/math/ec/ECCurve;

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;Z)V
    .locals 2
    .param p1, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "compressed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "compressed"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->p:Lorg/bouncycastle/math/ec/ECPoint;

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized getPoint()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->p:Lorg/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->c:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->p:Lorg/bouncycastle/math/ec/ECPoint;

    .line 57
    .end local p0    # "this":Lorg/bouncycastle/asn1/x9/X9ECPoint;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->p:Lorg/bouncycastle/math/ec/ECPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPointEncoding()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public isPointCompressed()Z
    .locals 4

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 63
    .local v0, "octets":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    aget-byte v2, v0, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    aget-byte v2, v0, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
