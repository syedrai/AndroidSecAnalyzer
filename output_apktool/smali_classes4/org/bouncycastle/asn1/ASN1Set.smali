.class public abstract Lorg/bouncycastle/asn1/ASN1Set;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Set.java"

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bouncycastle/asn1/ASN1Primitive;",
        "Lorg/bouncycastle/util/Iterable<",
        "Lorg/bouncycastle/asn1/ASN1Encodable;",
        ">;"
    }
.end annotation


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field protected final elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

.field protected sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Set$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1Set;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Set$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Set;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 174
    sget-object v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 175
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 176
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "element"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 184
    if-eqz p1, :cond_0

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 190
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 191
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .locals 3
    .param p1, "elementVector"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elementVector",
            "doSort"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 200
    if-eqz p1, :cond_3

    .line 206
    const/4 v0, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->copyElements()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 209
    .local v1, "tmp":[Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Set;->sort([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 213
    .end local v1    # "tmp":[Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 216
    .restart local v1    # "tmp":[Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 217
    if-nez p2, :cond_2

    array-length v2, v1

    if-ge v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    :goto_2
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 218
    return-void

    .line 202
    .end local v1    # "tmp":[Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elementVector\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isSorted",
            "elements"
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 244
    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 245
    if-nez p1, :cond_1

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 246
    return-void
.end method

.method protected constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V
    .locals 3
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .param p2, "doSort"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "doSort"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 227
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 232
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lorg/bouncycastle/asn1/ASN1Encodable;)[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 233
    .local v0, "tmp":[Lorg/bouncycastle/asn1/ASN1Encodable;
    const/4 v1, 0x2

    if-eqz p2, :cond_0

    array-length v2, v0

    if-lt v2, v1, :cond_0

    .line 235
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->sort([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 238
    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 239
    if-nez p2, :cond_2

    array-length v2, v0

    if-ge v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, p1

    :goto_1
    iput-object v1, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 240
    return-void

    .line 229
    .end local v0    # "tmp":[Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elements\' cannot be null, or contain null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .param p2, "sortedElements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "sortedElements"
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 250
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 251
    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 252
    return-void
.end method

.method private static getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 3
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 450
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 452
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot encode object added to SET"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;
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

    .line 118
    if-eqz p0, :cond_4

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    .line 125
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 126
    .local v0, "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 128
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Set;

    return-object v1

    .line 130
    .end local v0    # "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    goto :goto_0

    .line 131
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 135
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Set;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct set from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_4
    :goto_1
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;
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

    .line 165
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Set;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method private static lessThanOrEqual([B[B)Z
    .locals 8
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 477
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xdf

    .line 478
    .local v1, "a0":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xdf

    .line 479
    .local v2, "b0":I
    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 481
    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 484
    :cond_1
    array-length v4, p0

    array-length v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v3

    .line 485
    .local v4, "last":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 487
    aget-byte v6, p0, v5

    aget-byte v7, p1, v5

    if-eq v6, v7, :cond_3

    .line 489
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    if-ge v6, v7, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 485
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 492
    .end local v5    # "i":I
    :cond_4
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    if-gt v5, v6, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method private static sort([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 12
    .param p0, "t"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 497
    array-length v0, p0

    .line 498
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 500
    return-void

    .line 503
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p0, v1

    .local v1, "eh":Lorg/bouncycastle/asn1/ASN1Encodable;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 504
    .local v2, "ei":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v3

    .local v3, "bh":[B
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v4

    .line 506
    .local v4, "bi":[B
    invoke-static {v4, v3}, Lorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 508
    move-object v5, v2

    .local v5, "et":Lorg/bouncycastle/asn1/ASN1Encodable;
    move-object v2, v1

    move-object v1, v5

    .line 509
    move-object v6, v4

    .local v6, "bt":[B
    move-object v4, v3

    move-object v3, v6

    .line 512
    .end local v5    # "et":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v6    # "bt":[B
    :cond_1
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_6

    .line 514
    aget-object v6, p0, v5

    .line 515
    .local v6, "e2":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v7

    .line 517
    .local v7, "b2":[B
    invoke-static {v4, v7}, Lorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 519
    add-int/lit8 v8, v5, -0x2

    aput-object v1, p0, v8

    .line 520
    move-object v1, v2

    move-object v3, v4

    .line 521
    move-object v2, v6

    move-object v4, v7

    .line 522
    goto :goto_3

    .line 525
    :cond_2
    invoke-static {v3, v7}, Lorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 527
    add-int/lit8 v8, v5, -0x2

    aput-object v1, p0, v8

    .line 528
    move-object v1, v6

    move-object v3, v7

    .line 529
    goto :goto_3

    .line 532
    :cond_3
    add-int/lit8 v8, v5, -0x1

    .line 533
    .local v8, "j":I
    :goto_1
    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_5

    .line 535
    add-int/lit8 v9, v8, -0x1

    aget-object v9, p0, v9

    .line 536
    .local v9, "e1":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v9}, Lorg/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v10

    .line 538
    .local v10, "b1":[B
    invoke-static {v10, v7}, Lorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 540
    goto :goto_2

    .line 543
    :cond_4
    aput-object v9, p0, v8

    .line 544
    .end local v9    # "e1":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v10    # "b1":[B
    goto :goto_1

    .line 546
    :cond_5
    :goto_2
    aput-object v6, p0, v8

    .line 512
    .end local v6    # "e2":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v7    # "b2":[B
    .end local v8    # "j":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 549
    .end local v5    # "i":I
    :cond_6
    add-int/lit8 v5, v0, -0x2

    aput-object v1, p0, v5

    .line 550
    add-int/lit8 v5, v0, -0x1

    aput-object v2, p0, v5

    .line 551
    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 9
    .param p1, "other"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 383
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 385
    return v1

    .line 388
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    .line 390
    .local v0, "that":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    .line 391
    .local v2, "count":I
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 393
    return v1

    .line 396
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERSet;

    .line 397
    .local v3, "dis":Lorg/bouncycastle/asn1/DERSet;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERSet;

    .line 399
    .local v4, "dat":Lorg/bouncycastle/asn1/DERSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 401
    iget-object v6, v3, Lorg/bouncycastle/asn1/DERSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 402
    .local v6, "p1":Lorg/bouncycastle/asn1/ASN1Primitive;
    iget-object v7, v4, Lorg/bouncycastle/asn1/DERSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v7, v7, v5

    invoke-interface {v7}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 404
    .local v7, "p2":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eq v6, v7, :cond_2

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 406
    return v1

    .line 399
    .end local v6    # "p1":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v7    # "p2":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 410
    .end local v5    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method encodeConstructed()Z
    .locals 1

    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .line 256
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Set$2;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Set$2;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 345
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 346
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 349
    .local v1, "hc":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 351
    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 354
    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .line 443
    new-instance v0, Lorg/bouncycastle/util/Arrays$Iterator;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public parser()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    .line 304
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 306
    .local v0, "count":I
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Set$3;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/ASN1Set$3;-><init>(Lorg/bouncycastle/asn1/ASN1Set;I)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lorg/bouncycastle/asn1/ASN1Encodable;)[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 363
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, [Lorg/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 366
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->sort([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 369
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 378
    new-instance v0, Lorg/bouncycastle/asn1/DLSet;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DLSet;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 420
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 421
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 423
    const-string v1, "[]"

    return-object v1

    .line 426
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 427
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    const/4 v2, 0x0

    .line 430
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 431
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_1

    .line 433
    nop

    .line 437
    .end local v2    # "i":I
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 435
    .restart local v2    # "i":I
    :cond_1
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
