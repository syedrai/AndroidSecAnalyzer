.class abstract enum Lcom/google/common/hash/HighwayHashFunction$BitLength;
.super Ljava/lang/Enum;
.source "HighwayHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HighwayHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "BitLength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/HighwayHashFunction$BitLength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/HighwayHashFunction$BitLength;

.field public static final enum LENGTH128:Lcom/google/common/hash/HighwayHashFunction$BitLength;

.field public static final enum LENGTH256:Lcom/google/common/hash/HighwayHashFunction$BitLength;

.field public static final enum LENGTH64:Lcom/google/common/hash/HighwayHashFunction$BitLength;


# direct methods
.method private static synthetic $values()[Lcom/google/common/hash/HighwayHashFunction$BitLength;
    .locals 3

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/hash/HighwayHashFunction$BitLength;

    sget-object v1, Lcom/google/common/hash/HighwayHashFunction$BitLength;->LENGTH64:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/hash/HighwayHashFunction$BitLength;->LENGTH128:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/hash/HighwayHashFunction$BitLength;->LENGTH256:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/google/common/hash/HighwayHashFunction$BitLength$1;

    const-string v1, "LENGTH64"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/hash/HighwayHashFunction$BitLength$1;-><init>(Ljava/lang/String;ILcom/google/common/hash/HighwayHashFunction-IA;)V

    sput-object v0, Lcom/google/common/hash/HighwayHashFunction$BitLength;->LENGTH64:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    .line 36
    new-instance v0, Lcom/google/common/hash/HighwayHashFunction$BitLength$2;

    const-string v1, "LENGTH128"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/hash/HighwayHashFunction$BitLength$2;-><init>(Ljava/lang/String;ILcom/google/common/hash/HighwayHashFunction-IA;)V

    sput-object v0, Lcom/google/common/hash/HighwayHashFunction$BitLength;->LENGTH128:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    .line 50
    new-instance v0, Lcom/google/common/hash/HighwayHashFunction$BitLength$3;

    const-string v1, "LENGTH256"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/hash/HighwayHashFunction$BitLength$3;-><init>(Ljava/lang/String;ILcom/google/common/hash/HighwayHashFunction-IA;)V

    sput-object v0, Lcom/google/common/hash/HighwayHashFunction$BitLength;->LENGTH256:Lcom/google/common/hash/HighwayHashFunction$BitLength;

    .line 24
    invoke-static {}, Lcom/google/common/hash/HighwayHashFunction$BitLength;->$values()[Lcom/google/common/hash/HighwayHashFunction$BitLength;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/HighwayHashFunction$BitLength;->$VALUES:[Lcom/google/common/hash/HighwayHashFunction$BitLength;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/HighwayHashFunction-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/HighwayHashFunction$BitLength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/HighwayHashFunction$BitLength;
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

    .line 24
    const-class v0, Lcom/google/common/hash/HighwayHashFunction$BitLength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HighwayHashFunction$BitLength;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/HighwayHashFunction$BitLength;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/common/hash/HighwayHashFunction$BitLength;->$VALUES:[Lcom/google/common/hash/HighwayHashFunction$BitLength;

    invoke-virtual {v0}, [Lcom/google/common/hash/HighwayHashFunction$BitLength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/HighwayHashFunction$BitLength;

    return-object v0
.end method


# virtual methods
.method abstract bits()I
.end method

.method abstract makeHash(Lcom/google/highwayhash/HighwayHash;)Lcom/google/common/hash/HashCode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation
.end method
