.class public final enum Lorg/bouncycastle/crypto/util/DERMacData$Type;
.super Ljava/lang/Enum;
.source "DERMacData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DERMacData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/util/DERMacData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;


# instance fields
.field private final enc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .locals 3

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/bouncycastle/crypto/util/DERMacData$Type;

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v1, 0x0

    const-string v2, "KC_1_U"

    const-string v3, "UNILATERALU"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    .line 17
    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v1, 0x1

    const-string v2, "KC_1_V"

    const-string v3, "UNILATERALV"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    .line 18
    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v1, 0x2

    const-string v2, "KC_2_U"

    const-string v3, "BILATERALU"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    .line 19
    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v1, 0x3

    const-string v2, "KC_2_V"

    const-string v3, "BILATERALV"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    .line 14
    invoke-static {}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "enc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->enc:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/util/DERMacData$Type;
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

    .line 14
    const-class v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .locals 1

    .line 14
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/util/DERMacData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-object v0
.end method


# virtual methods
.method public getHeader()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->enc:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
