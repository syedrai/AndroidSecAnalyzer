.class public final enum Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "BCFKSLoadStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA3_512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA3_512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA3_512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field public static final enum SHA512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .locals 3

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    sget-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA3_512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA3_512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA3_512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v1, "SHA512withDSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 36
    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v1, "SHA3_512withDSA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA3_512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 37
    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v1, "SHA512withECDSA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 38
    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v1, "SHA3_512withECDSA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA3_512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 39
    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v1, "SHA512withRSA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 40
    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    const-string v1, "SHA3_512withRSA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA3_512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 33
    invoke-static {}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->$values()[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->$VALUES:[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 33
    const-class v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .locals 1

    .line 33
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->$VALUES:[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    invoke-virtual {v0}, [Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-object v0
.end method
