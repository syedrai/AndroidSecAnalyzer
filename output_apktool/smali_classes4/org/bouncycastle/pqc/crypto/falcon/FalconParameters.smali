.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
.super Ljava/lang/Object;
.source "FalconParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field public static final falcon_1024:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

.field public static final falcon_512:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;


# instance fields
.field private final logn:I

.field private final name:Ljava/lang/String;

.field private final nonce_length:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    const-string v1, "falcon-512"

    const/16 v2, 0x9

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->falcon_512:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    .line 9
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    const-string v1, "falcon-1024"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->falcon_1024:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "logn"    # I
    .param p3, "nonce_length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "logn",
            "nonce_length"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0xa

    if-gt p2, v0, :cond_0

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->name:Ljava/lang/String;

    .line 22
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->logn:I

    .line 23
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->nonce_length:I

    .line 24
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Log N degree should be between 1 and 10"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getLogN()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->logn:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNonceLength()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->nonce_length:I

    return v0
.end method
