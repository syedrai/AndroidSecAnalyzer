.class public final enum Lj$/nio/file/StandardCopyOption;
.super Ljava/lang/Enum;
.source "StandardCopyOption.java"

# interfaces
.implements Lj$/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/StandardCopyOption;",
        ">;",
        "Lj$/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/StandardCopyOption;

.field public static final enum ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

.field public static final enum COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

.field public static final enum REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/StandardCopyOption;
    .locals 3

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lj$/nio/file/StandardCopyOption;

    sget-object v1, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lj$/nio/file/StandardCopyOption;

    const-string v1, "REPLACE_EXISTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    .line 42
    new-instance v0, Lj$/nio/file/StandardCopyOption;

    const-string v1, "COPY_ATTRIBUTES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

    .line 46
    new-instance v0, Lj$/nio/file/StandardCopyOption;

    const-string v1, "ATOMIC_MOVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

    .line 34
    invoke-static {}, Lj$/nio/file/StandardCopyOption;->$values()[Lj$/nio/file/StandardCopyOption;

    move-result-object v0

    sput-object v0, Lj$/nio/file/StandardCopyOption;->$VALUES:[Lj$/nio/file/StandardCopyOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/StandardCopyOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lj$/nio/file/StandardCopyOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/StandardCopyOption;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/StandardCopyOption;
    .locals 1

    .line 34
    sget-object v0, Lj$/nio/file/StandardCopyOption;->$VALUES:[Lj$/nio/file/StandardCopyOption;

    invoke-virtual {v0}, [Lj$/nio/file/StandardCopyOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/StandardCopyOption;

    return-object v0
.end method
