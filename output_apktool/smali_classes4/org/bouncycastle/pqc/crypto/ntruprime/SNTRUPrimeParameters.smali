.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
.super Ljava/lang/Object;
.source "SNTRUPrimeParameters.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final sntrup1013:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup1277:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup653:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup761:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup857:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup953:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;


# instance fields
.field private final name:Ljava/lang/String;

.field private final p:I

.field private final privateKeyBytes:I

.field private final publicKeyBytes:I

.field private final q:I

.field private final roundedPolynomialBytes:I

.field private final rqPolynomialBytes:I

.field private final sharedKeyBytes:I

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 11
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const/16 v8, 0x5ee

    const/16 v9, 0x20

    const-string/jumbo v1, "sntrup653"

    const/16 v2, 0x28d

    const/16 v3, 0x120d

    const/16 v4, 0x120

    const/16 v5, 0x3e2

    const/16 v6, 0x361

    const/16 v7, 0x3e2

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup653:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    .line 13
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const/16 v9, 0x6e3

    const/16 v10, 0x20

    const-string/jumbo v2, "sntrup761"

    const/16 v3, 0x2f9

    const/16 v4, 0x11ef

    const/16 v5, 0x11e

    const/16 v6, 0x486

    const/16 v7, 0x3ef

    const/16 v8, 0x486

    invoke-direct/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup761:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    .line 15
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const/16 v10, 0x7cf

    const/16 v11, 0x20

    const-string/jumbo v3, "sntrup857"

    const/16 v4, 0x359

    const/16 v5, 0x142f

    const/16 v6, 0x142

    const/16 v7, 0x52a

    const/16 v8, 0x480

    const/16 v9, 0x52a

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup857:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    .line 17
    new-instance v3, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const/16 v11, 0x8ce

    const/16 v12, 0x20

    const-string/jumbo v4, "sntrup953"

    const/16 v5, 0x3b9

    const/16 v6, 0x18c7

    const/16 v7, 0x18c

    const/16 v8, 0x5e1

    const/16 v9, 0x525

    const/16 v10, 0x5e1

    invoke-direct/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup953:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    .line 19
    new-instance v4, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const/16 v12, 0x971

    const/16 v13, 0x20

    const-string/jumbo v5, "sntrup1013"

    const/16 v6, 0x3f5

    const/16 v7, 0x1c09

    const/16 v8, 0x1c0

    const/16 v9, 0x657

    const/16 v10, 0x58f

    const/16 v11, 0x657

    invoke-direct/range {v4 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1013:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    .line 21
    new-instance v5, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const/16 v13, 0xbf3

    const/16 v14, 0x20

    const-string/jumbo v6, "sntrup1277"

    const/16 v7, 0x4fd

    const/16 v8, 0x1ec7

    const/16 v9, 0x1ec

    const/16 v10, 0x813

    const/16 v11, 0x717

    const/16 v12, 0x813

    invoke-direct/range {v5 .. v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1277:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "p"    # I
    .param p3, "q"    # I
    .param p4, "w"    # I
    .param p5, "rqPolynomialBytes"    # I
    .param p6, "roundedPolynomialBytes"    # I
    .param p7, "publicKeyBytes"    # I
    .param p8, "privateKeyBytes"    # I
    .param p9, "sharedKeyBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "name",
            "p",
            "q",
            "w",
            "rqPolynomialBytes",
            "roundedPolynomialBytes",
            "publicKeyBytes",
            "privateKeyBytes",
            "sharedKeyBytes"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->name:Ljava/lang/String;

    .line 49
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->p:I

    .line 50
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->q:I

    .line 51
    iput p4, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->w:I

    .line 52
    iput p5, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->rqPolynomialBytes:I

    .line 53
    iput p6, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->roundedPolynomialBytes:I

    .line 54
    iput p7, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->publicKeyBytes:I

    .line 55
    iput p8, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->privateKeyBytes:I

    .line 56
    iput p9, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sharedKeyBytes:I

    .line 57
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getP()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->p:I

    return v0
.end method

.method public getPrivateKeyBytes()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->privateKeyBytes:I

    return v0
.end method

.method public getPublicKeyBytes()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->publicKeyBytes:I

    return v0
.end method

.method public getQ()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->q:I

    return v0
.end method

.method public getRoundedPolynomialBytes()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->roundedPolynomialBytes:I

    return v0
.end method

.method public getRqPolynomialBytes()I
    .locals 1

    .line 91
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->rqPolynomialBytes:I

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sharedKeyBytes:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getW()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->w:I

    return v0
.end method
