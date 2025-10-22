.class public Lorg/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lorg/bouncycastle/asn1/BERTags;
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .line 27
    invoke-static {p1}, Lorg/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "limit"
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "limit",
            "lazyEvaluate"
        }
    .end annotation

    .line 86
    const/16 v0, 0xb

    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    .line 87
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;IZ[[B)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z
    .param p4, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "limit",
            "lazyEvaluate",
            "tmpBuffers"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    iput p2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 93
    iput-boolean p3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 94
    iput-object p4, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "lazyEvaluate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "lazyEvaluate"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lorg/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 74
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 39
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "lazyEvaluate"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 51
    return-void
.end method

.method static createPrimitiveDERObject(ILorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "tagNo"    # I
    .param p1, "defIn"    # Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p2, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tagNo",
            "defIn",
            "tmpBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    const-string v0, " encountered"

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 585
    :pswitch_0
    :try_start_0
    new-instance v1, Ljava/io/IOException;

    goto/16 :goto_0

    .line 526
    :pswitch_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BMPString;->createPrimitive([C)Lorg/bouncycastle/asn1/ASN1BMPString;

    move-result-object v0

    return-object v0

    .line 567
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UniversalString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UniversalString;

    move-result-object v0

    return-object v0

    .line 533
    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GeneralString;

    move-result-object v0

    return-object v0

    .line 575
    :pswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1VisibleString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1VisibleString;

    move-result-object v0

    return-object v0

    .line 537
    :pswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GraphicString;

    move-result-object v0

    return-object v0

    .line 535
    :pswitch_6
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    return-object v0

    .line 569
    :pswitch_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTCTime;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UTCTime;

    move-result-object v0

    return-object v0

    .line 539
    :pswitch_8
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v0

    return-object v0

    .line 573
    :pswitch_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1VideotexString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1VideotexString;

    move-result-object v0

    return-object v0

    .line 565
    :pswitch_a
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1T61String;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1T61String;

    move-result-object v0

    return-object v0

    .line 557
    :pswitch_b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1PrintableString;

    move-result-object v0

    return-object v0

    .line 545
    :pswitch_c
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1NumericString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1NumericString;

    move-result-object v0

    return-object v0

    .line 583
    :pswitch_d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "tagNo":I
    .end local p1    # "defIn":Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local p2    # "tmpBuffers":[[B
    throw v1

    .line 560
    .restart local p0    # "tagNo":I
    .restart local p1    # "defIn":Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .restart local p2    # "tmpBuffers":[[B
    :pswitch_e
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->checkContentsLength(I)V

    .line 562
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1RelativeOID;

    move-result-object v0

    return-object v0

    .line 571
    :pswitch_f
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    return-object v0

    .line 531
    :pswitch_10
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0

    .line 547
    :pswitch_11
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    move-result-object v0

    return-object v0

    .line 550
    :pswitch_12
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->checkContentsLength(I)V

    .line 552
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    .line 543
    :pswitch_13
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Null;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Null;

    move-result-object v0

    return-object v0

    .line 555
    :pswitch_14
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0

    .line 524
    :pswitch_15
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0

    .line 541
    :pswitch_16
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0

    .line 528
    :pswitch_17
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    .line 592
    :catch_0
    move-exception v0

    goto :goto_1

    .line 588
    :catch_1
    move-exception v0

    goto :goto_2

    .line 585
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "tagNo":I
    .end local p1    # "defIn":Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local p2    # "tmpBuffers":[[B
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "tagNo":I
    .restart local p1    # "defIn":Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .restart local p2    # "tmpBuffers":[[B
    :goto_1
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 590
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private static getBMPCharBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .locals 10
    .param p0, "defIn"    # Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defIn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 461
    .local v0, "remainingBytes":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_6

    .line 466
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    .line 467
    .local v1, "string":[C
    const/4 v2, 0x0

    .line 469
    .local v2, "stringPos":I
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 470
    .local v4, "buf":[B
    :goto_0
    const-string v5, "EOF encountered in middle of BMPString"

    const/4 v6, 0x0

    if-lt v0, v3, :cond_1

    .line 472
    invoke-static {p0, v4, v6, v3}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v7

    if-ne v7, v3, :cond_0

    .line 477
    aget-byte v5, v4, v6

    shl-int/2addr v5, v3

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    .line 478
    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 479
    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x4

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 480
    add-int/lit8 v5, v2, 0x3

    const/4 v6, 0x6

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 481
    add-int/lit8 v2, v2, 0x4

    .line 482
    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    .line 474
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 484
    :cond_1
    if-lez v0, :cond_4

    .line 486
    invoke-static {p0, v4, v6, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 491
    const/4 v5, 0x0

    .line 494
    .local v5, "bufPos":I
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufPos":I
    .local v6, "bufPos":I
    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    .line 495
    .local v5, "b1":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufPos":I
    .local v7, "bufPos":I
    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    .line 496
    .local v6, "b2":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "stringPos":I
    .local v8, "stringPos":I
    or-int v9, v5, v6

    int-to-char v9, v9

    aput-char v9, v1, v2

    .line 498
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    if-lt v7, v0, :cond_2

    move v2, v8

    goto :goto_2

    :cond_2
    move v5, v7

    move v2, v8

    goto :goto_1

    .line 488
    .end local v7    # "bufPos":I
    .end local v8    # "stringPos":I
    .restart local v2    # "stringPos":I
    :cond_3
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 501
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v3

    if-nez v3, :cond_5

    array-length v3, v1

    if-ne v3, v2, :cond_5

    .line 506
    return-object v1

    .line 503
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 463
    .end local v1    # "string":[C
    .end local v2    # "stringPos":I
    .end local v4    # "buf":[B
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "malformed BMPString encoding encountered"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .locals 3
    .param p0, "defIn"    # Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p1, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defIn",
            "tmpBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 441
    .local v0, "len":I
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 446
    :cond_0
    aget-object v1, p1, v0

    .line 447
    .local v1, "buf":[B
    if-nez v1, :cond_1

    .line 449
    new-array v2, v0, [B

    aput-object v2, p1, v0

    move-object v1, v2

    .line 452
    :cond_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->readAllIntoByteArray([B)V

    .line 454
    return-object v1
.end method

.method static readLength(Ljava/io/InputStream;IZ)I
    .locals 6
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .param p2, "isParsing"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "limit",
            "isParsing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 390
    .local v0, "length":I
    ushr-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 393
    return v0

    .line 395
    :cond_0
    const/16 v1, 0x80

    if-ne v1, v0, :cond_1

    .line 398
    const/4 v1, -0x1

    return v1

    .line 400
    :cond_1
    if-ltz v0, :cond_8

    .line 404
    const/16 v1, 0xff

    if-eq v1, v0, :cond_7

    .line 409
    and-int/lit8 v1, v0, 0x7f

    .local v1, "octetsCount":I
    const/4 v2, 0x0

    .line 411
    .local v2, "octetsPos":I
    const/4 v0, 0x0

    .line 414
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 415
    .local v3, "octet":I
    if-ltz v3, :cond_6

    .line 420
    ushr-int/lit8 v4, v0, 0x17

    if-nez v4, :cond_5

    .line 425
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v3

    .line 427
    .end local v3    # "octet":I
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_2

    .line 429
    if-lt v0, p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    .line 431
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "corrupted stream - out of bounds length found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :cond_4
    :goto_0
    return v0

    .line 422
    .restart local v3    # "octet":I
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "long form definite-length more than 31 bits"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 417
    :cond_6
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    .end local v1    # "octetsCount":I
    .end local v2    # "octetsPos":I
    .end local v3    # "octet":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid long form definite-length 0xFF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "EOF found when length expected"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    and-int/lit8 v0, p1, 0x1f

    .line 343
    .local v0, "tagNo":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_5

    .line 345
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 346
    .local v2, "b":I
    const-string v3, "EOF found inside tag value."

    if-ge v2, v1, :cond_1

    .line 348
    if-gez v2, :cond_0

    .line 350
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v3, "corrupted stream - high tag number < 31 found"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_1
    and-int/lit8 v0, v2, 0x7f

    .line 359
    if-eqz v0, :cond_4

    .line 364
    :goto_0
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_5

    .line 366
    ushr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_3

    .line 371
    shl-int/lit8 v0, v0, 0x7

    .line 373
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 374
    if-ltz v2, :cond_2

    .line 379
    and-int/lit8 v1, v2, 0x7f

    or-int/2addr v0, v1

    goto :goto_0

    .line 376
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Tag number more than 31 bits"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    .end local v2    # "b":I
    :cond_5
    return v0
.end method


# virtual methods
.method buildConstructedBitString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 7
    .param p1, "contentsElements"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentsElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1BitString;

    .line 254
    .local v0, "strings":[Lorg/bouncycastle/asn1/ASN1BitString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 256
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 257
    .local v2, "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v3, :cond_0

    .line 259
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/asn1/ASN1BitString;

    aput-object v3, v0, v1

    .line 254
    .end local v2    # "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .restart local v2    # "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Exception;

    .line 264
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown object encountered in constructed BIT STRING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    .end local v1    # "i":I
    .end local v2    # "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/BERBitString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object v1
.end method

.method buildConstructedOctetString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 7
    .param p1, "contentsElements"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentsElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 276
    .local v0, "strings":[Lorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 278
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 279
    .local v2, "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_0

    .line 281
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v3, v0, v1

    .line 276
    .end local v2    # "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .restart local v2    # "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Exception;

    .line 286
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    .end local v1    # "i":I
    .end local v2    # "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v1
.end method

.method protected buildObject(III)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "tagNo",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v0, p0, p3, v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 137
    .local v0, "defIn":Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit16 v1, p1, 0xe0

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 142
    :cond_0
    and-int/lit16 v1, p1, 0xc0

    .line 143
    .local v1, "tagClass":I
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 145
    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 146
    .local v2, "isConstructed":Z
    :goto_0
    invoke-virtual {p0, v1, p2, v2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTaggedObjectDL(IIZLorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 149
    .end local v2    # "isConstructed":Z
    :cond_2
    sparse-switch p2, :sswitch_data_0

    .line 182
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encountered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :sswitch_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/DLFactory;->createSet(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSet;

    move-result-object v2

    return-object v2

    .line 164
    :sswitch_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v3

    if-ge v3, v2, :cond_3

    .line 166
    sget-object v2, Lorg/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/DLSequence;

    return-object v2

    .line 168
    :cond_3
    iget-boolean v2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_4

    .line 170
    new-instance v2, Lorg/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object v2

    .line 174
    :cond_4
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    move-result-object v2

    return-object v2

    .line 180
    :sswitch_2
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DLSequence;->toASN1External()Lorg/bouncycastle/asn1/ASN1External;

    move-result-object v2

    return-object v2

    .line 160
    :sswitch_3
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildConstructedOctetString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    return-object v2

    .line 153
    :sswitch_4
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildConstructedBitString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method getLimit()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected readFully([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 116
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    .line 190
    .local v0, "tag":I
    if-gtz v0, :cond_1

    .line 192
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x0

    return-object v1

    .line 194
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "unexpected end-of-contents marker"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 201
    .local v1, "tagNo":I
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    .line 203
    .local v2, "length":I
    if-ltz v2, :cond_2

    .line 208
    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 210
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v5, "corrupted stream detected"

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 218
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_4

    .line 223
    new-instance v3, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v4, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 224
    .local v3, "indIn":Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget v5, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    iget-object v6, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v4, v3, v5, v6}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    .line 226
    .local v4, "sp":Lorg/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit16 v5, v0, 0xc0

    .line 227
    .local v5, "tagClass":I
    if-eqz v5, :cond_3

    .line 229
    invoke-virtual {v4, v5, v1}, Lorg/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    return-object v6

    .line 232
    :cond_3
    sparse-switch v1, :sswitch_data_0

    .line 246
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "unknown BER object encountered"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 244
    :sswitch_0
    invoke-static {v4}, Lorg/bouncycastle/asn1/BERSetParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERSet;

    move-result-object v6

    return-object v6

    .line 242
    :sswitch_1
    invoke-static {v4}, Lorg/bouncycastle/asn1/BERSequenceParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERSequence;

    move-result-object v6

    return-object v6

    .line 240
    :sswitch_2
    invoke-static {v4}, Lorg/bouncycastle/asn1/DERExternalParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/DLExternal;

    move-result-object v6

    return-object v6

    .line 237
    :sswitch_3
    invoke-static {v4}, Lorg/bouncycastle/asn1/BEROctetStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BEROctetString;

    move-result-object v6

    return-object v6

    .line 235
    :sswitch_4
    invoke-static {v4}, Lorg/bouncycastle/asn1/BERBitStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;

    move-result-object v6

    return-object v6

    .line 220
    .end local v3    # "indIn":Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v4    # "sp":Lorg/bouncycastle/asn1/ASN1StreamParser;
    .end local v5    # "tagClass":I
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "indefinite-length primitive encoding encountered"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method readTaggedObjectDL(IIZLorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "constructed"    # Z
    .param p4, "defIn"    # Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tagClass",
            "tagNo",
            "constructed",
            "defIn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    if-nez p3, :cond_0

    .line 299
    invoke-virtual {p4}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    .line 300
    .local v0, "contentsOctets":[B
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->createPrimitive(II[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 303
    .end local v0    # "contentsOctets":[B
    :cond_0
    invoke-virtual {p0, p4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    .line 304
    .local v0, "contentsElements":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->createConstructedDL(IILorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1
.end method

.method readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 310
    .local v0, "p":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_0

    .line 312
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v1

    .line 315
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 318
    .local v1, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 320
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_1

    .line 321
    return-object v1
.end method

.method readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 4
    .param p1, "defIn"    # Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defIn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 327
    .local v0, "remaining":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 329
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v1

    .line 332
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    return-object v1
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
