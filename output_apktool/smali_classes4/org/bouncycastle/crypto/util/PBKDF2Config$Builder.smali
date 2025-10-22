.class public Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;
.super Ljava/lang/Object;
.source "PBKDF2Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/PBKDF2Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private iterationCount:I

.field private prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private saltLength:I


# direct methods
.method static bridge synthetic -$$Nest$fgetiterationCount(Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->iterationCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprf(Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsaltLength(Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->saltLength:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->iterationCount:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->saltLength:I

    .line 80
    sget-object v0, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 89
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/util/PBKDF2Config;
    .locals 2

    .line 132
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config;-><init>(Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;Lorg/bouncycastle/crypto/util/PBKDF2Config-IA;)V

    return-object v0
.end method

.method public withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;
    .locals 0
    .param p1, "iterationCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterationCount"
        }
    .end annotation

    .line 99
    iput p1, p0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->iterationCount:I

    .line 101
    return-object p0
.end method

.method public withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;
    .locals 0
    .param p1, "prf"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prf"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 114
    return-object p0
.end method

.method public withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;
    .locals 0
    .param p1, "saltLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saltLength"
        }
    .end annotation

    .line 125
    iput p1, p0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->saltLength:I

    .line 127
    return-object p0
.end method
