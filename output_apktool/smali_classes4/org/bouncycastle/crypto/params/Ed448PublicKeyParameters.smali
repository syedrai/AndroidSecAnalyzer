.class public final Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "Ed448PublicKeyParameters.java"


# static fields
.field public static final KEY_SIZE:I = 0x39


# instance fields
.field private final publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
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

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 33
    const/16 v1, 0x39

    new-array v2, v1, [B

    .line 35
    .local v2, "data":[B
    invoke-static {p1, v2}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 40
    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->parse([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    .line 41
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of Ed448 public key"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;)V
    .locals 2
    .param p1, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicPoint"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 47
    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'publicPoint\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 19
    invoke-static {p1}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->validate([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;-><init>([BI)V

    .line 20
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
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

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 26
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->parse([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    .line 27
    return-void
.end method

.method private static parse([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
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

    .line 110
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->validatePublicKeyPartialExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object v0

    .line 111
    .local v0, "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    if-eqz v0, :cond_0

    .line 115
    return-object v0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 120
    array-length v0, p0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    .line 124
    return-object p0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'buf\' must have length 57"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode([BI)V
    .locals 1
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

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BI)V

    .line 58
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    .line 62
    const/16 v0, 0x39

    new-array v0, v0, [B

    .line 63
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->encode([BI)V

    .line 64
    return-object v0
.end method

.method public verify(I[B[BII[BI)Z
    .locals 7
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

    .line 69
    const-string v0, "ctx"

    const-string v1, "\'ctx\' cannot be null"

    const/16 v2, 0xff

    packed-switch p1, :pswitch_data_0

    .line 103
    move-object v3, p2

    move v6, p5

    .end local p2    # "ctx":[B
    .end local p5    # "msgLen":I
    .local v3, "ctx":[B
    .local v6, "msgLen":I
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p5, "algorithm"

    invoke-direct {p2, p5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 86
    .end local v3    # "ctx":[B
    .end local v6    # "msgLen":I
    .restart local p2    # "ctx":[B
    .restart local p5    # "msgLen":I
    :pswitch_0
    if-eqz p2, :cond_2

    .line 90
    array-length v1, p2

    if-gt v1, v2, :cond_1

    .line 94
    const/16 v0, 0x40

    if-ne v0, p5, :cond_0

    .line 99
    iget-object v3, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v1, p6

    move v2, p7

    .end local p2    # "ctx":[B
    .end local p3    # "msg":[B
    .end local p4    # "msgOff":I
    .end local p6    # "sig":[B
    .end local p7    # "sigOff":I
    .local v1, "sig":[B
    .local v2, "sigOff":I
    .local v4, "ctx":[B
    .local v5, "msg":[B
    .local v6, "msgOff":I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[B[BI)Z

    move-result p2

    move-object p3, v1

    move p4, v2

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    .end local v1    # "sig":[B
    .end local v2    # "sigOff":I
    .end local v6    # "msgOff":I
    .restart local v3    # "ctx":[B
    .local v4, "msg":[B
    .local v5, "msgOff":I
    .local p3, "sig":[B
    .local p4, "sigOff":I
    return p2

    .line 96
    .end local v3    # "ctx":[B
    .end local v4    # "msg":[B
    .end local v5    # "msgOff":I
    .restart local p2    # "ctx":[B
    .local p3, "msg":[B
    .local p4, "msgOff":I
    .restart local p6    # "sig":[B
    .restart local p7    # "sigOff":I
    :cond_0
    move-object v3, p2

    move-object v4, p3

    move-object p3, p6

    .end local p2    # "ctx":[B
    .end local p6    # "sig":[B
    .restart local v3    # "ctx":[B
    .restart local v4    # "msg":[B
    .local p3, "sig":[B
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p6, "msgLen"

    invoke-direct {p2, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 92
    .end local v3    # "ctx":[B
    .end local v4    # "msg":[B
    .restart local p2    # "ctx":[B
    .local p3, "msg":[B
    .restart local p6    # "sig":[B
    :cond_1
    move-object v3, p2

    .end local p2    # "ctx":[B
    .restart local v3    # "ctx":[B
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 88
    .end local v3    # "ctx":[B
    .restart local p2    # "ctx":[B
    :cond_2
    move-object v3, p2

    .end local p2    # "ctx":[B
    .restart local v3    # "ctx":[B
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 73
    .end local v3    # "ctx":[B
    .restart local p2    # "ctx":[B
    :pswitch_1
    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object p3, p6

    move p4, p7

    .end local p2    # "ctx":[B
    .end local p6    # "sig":[B
    .end local p7    # "sigOff":I
    .restart local v3    # "ctx":[B
    .restart local v4    # "msg":[B
    .restart local v5    # "msgOff":I
    .local p3, "sig":[B
    .local p4, "sigOff":I
    if-eqz v3, :cond_4

    .line 77
    array-length p2, v3

    if-gt p2, v2, :cond_3

    .line 82
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-object v0, p3

    move v1, p4

    move v6, p5

    .end local p3    # "sig":[B
    .end local p4    # "sigOff":I
    .end local p5    # "msgLen":I
    .local v0, "sig":[B
    .local v1, "sigOff":I
    .local v6, "msgLen":I
    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->verify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[B[BII)Z

    move-result p2

    .end local v0    # "sig":[B
    .end local v1    # "sigOff":I
    .restart local p3    # "sig":[B
    .restart local p4    # "sigOff":I
    return p2

    .line 79
    .end local v6    # "msgLen":I
    .restart local p5    # "msgLen":I
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 75
    :cond_4
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
