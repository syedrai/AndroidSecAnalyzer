.class public Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;
.super Ljava/lang/Object;
.source "KyberParameters.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final kyber1024:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

.field public static final kyber512:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

.field public static final kyber768:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;


# instance fields
.field private final k:I

.field private final name:Ljava/lang/String;

.field private final sessionKeySize:I

.field private final usingAes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    const-string v1, "kyber512"

    const/4 v2, 0x2

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber512:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    .line 9
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    const-string v1, "kyber768"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber768:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    .line 10
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    const-string v1, "kyber1024"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber1024:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "k"    # I
    .param p3, "sessionKeySize"    # I
    .param p4, "usingAes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "k",
            "sessionKeySize",
            "usingAes"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->name:Ljava/lang/String;

    .line 25
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->k:I

    .line 26
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->sessionKeySize:I

    .line 27
    iput-boolean p4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->usingAes:Z

    .line 28
    return-void
.end method


# virtual methods
.method getEngine()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
    .locals 3

    .line 37
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->k:I

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->usingAes:Z

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;-><init>(IZ)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKeySize()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->sessionKeySize:I

    return v0
.end method
