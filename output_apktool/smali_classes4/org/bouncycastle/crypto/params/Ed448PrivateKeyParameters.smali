.class public final Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "Ed448PrivateKeyParameters.java"


# static fields
.field public static final KEY_SIZE:I = 0x39

.field public static final SIGNATURE_SIZE:I = 0x72


# instance fields
.field private cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

.field private final data:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    const/16 v0, 0x39

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    .line 45
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    invoke-static {p1, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 49
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of Ed448 private key"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    const/16 v0, 0x39

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->generatePrivateKey(Ljava/security/SecureRandom;[B)V

    .line 27
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->validate([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;-><init>([BI)V

    .line 32
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "off"
        }
    .end annotation

    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    const/16 v0, 0x39

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    .line 38
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    return-void
.end method

.method private static validate([B)[B
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 132
    array-length v0, p0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    .line 136
    return-object p0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'buf\' must have length 57"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode([BI)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "off"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x39

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-void
.end method

.method public generatePublicKey()Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
    .locals 4

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->generatePublicKey([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncoded()[B
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public sign(ILorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;[B[BII[BI)V
    .locals 8
    .param p1, "algorithm"    # I
    .param p2, "publicKey"    # Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
    .param p3, "ctx"    # [B
    .param p4, "msg"    # [B
    .param p5, "msgOff"    # I
    .param p6, "msgLen"    # I
    .param p7, "sig"    # [B
    .param p8, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "publicKey",
            "ctx",
            "msg",
            "msgOff",
            "msgLen",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 79
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->sign(I[B[BII[BI)V

    .line 80
    return-void
.end method

.method public sign(I[B[BII[BI)V
    .locals 11
    .param p1, "algorithm"    # I
    .param p2, "ctx"    # [B
    .param p3, "msg"    # [B
    .param p4, "msgOff"    # I
    .param p5, "msgLen"    # I
    .param p6, "sig"    # [B
    .param p7, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "ctx",
            "msg",
            "msgOff",
            "msgLen",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    move-result-object v10

    .line 86
    .local v10, "publicKey":Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
    const/16 v0, 0x39

    new-array v2, v0, [B

    .line 87
    .local v2, "pk":[B
    const/4 v0, 0x0

    invoke-virtual {v10, v2, v0}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->encode([BI)V

    .line 89
    const-string v0, "ctx"

    const-string v1, "\'ctx\' cannot be null"

    const/16 v3, 0xff

    packed-switch p1, :pswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_0
    if-eqz p2, :cond_2

    .line 111
    array-length v1, p2

    if-gt v1, v3, :cond_1

    .line 115
    const/16 v0, 0x40

    move/from16 v9, p5

    if-ne v0, v9, :cond_0

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->signPrehash([BI[BI[B[BI[BI)V

    .line 121
    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msgLen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    move/from16 v9, p5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_2
    move/from16 v9, p5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_1
    move/from16 v9, p5

    if-eqz p2, :cond_4

    .line 97
    array-length v1, p2

    if-gt v1, v3, :cond_3

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v8, p6

    move v7, v9

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->sign([BI[BI[B[BII[BI)V

    .line 103
    nop

    .line 128
    :goto_0
    return-void

    .line 99
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
