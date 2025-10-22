.class public Lorg/bouncycastle/asn1/ASN1Enumerated;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

.field private static final cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;


# instance fields
.field private final contents:[B

.field private final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1Enumerated;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Enumerated$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    .line 190
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Enumerated;

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Enumerated;->cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;

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

    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 77
    if-ltz p1, :cond_0

    .line 82
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 84
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enumerated must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 93
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 100
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enumerated must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    .line 110
    return-void
.end method

.method constructor <init>([BZ)V
    .locals 2
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contents",
            "clone"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 114
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->isMalformed([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    .line 123
    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    .line 124
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->signBytesToSkip([B)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 125
    return-void

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enumerated must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "malformed enumerated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1Enumerated;
    .locals 4
    .param p0, "contents"    # [B
    .param p1, "clone"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contents",
            "clone"
        }
    .end annotation

    .line 194
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 196
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    return-object v0

    .line 199
    :cond_0
    array-length v0, p0

    if-eqz v0, :cond_3

    .line 203
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 205
    .local v0, "value":I
    sget-object v1, Lorg/bouncycastle/asn1/ASN1Enumerated;->cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 207
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    return-object v1

    .line 210
    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/ASN1Enumerated;->cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;

    aget-object v1, v1, v0

    .line 212
    .local v1, "possibleMatch":Lorg/bouncycastle/asn1/ASN1Enumerated;
    if-nez v1, :cond_2

    .line 214
    sget-object v2, Lorg/bouncycastle/asn1/ASN1Enumerated;->cache:[Lorg/bouncycastle/asn1/ASN1Enumerated;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v3, p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>([BZ)V

    aput-object v3, v2, v0

    move-object v1, v3

    .line 217
    :cond_2
    return-object v1

    .line 201
    .end local v0    # "value":I
    .end local v1    # "possibleMatch":Lorg/bouncycastle/asn1/ASN1Enumerated;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENUMERATED has zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 32
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 41
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoding error in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Enumerated;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "explicit"
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 175
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Enumerated;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    .line 182
    .local v0, "other":Lorg/bouncycastle/asn1/ASN1Enumerated;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget-object v2, v0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

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

    .line 169
    const/16 v0, 0xa

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 170
    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 159
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

    .line 164
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    .line 129
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hasValue(I)Z
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->start:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 135
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0
.end method

.method public hasValue(Ljava/math/BigInteger;)Z
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 140
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->start:I

    .line 142
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public intValueExact()I
    .locals 4

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->start:I

    sub-int/2addr v0, v1

    .line 149
    .local v0, "count":I
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->contents:[B

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->start:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v1

    return v1

    .line 151
    :cond_0
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "ASN.1 Enumerated out of int range"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
