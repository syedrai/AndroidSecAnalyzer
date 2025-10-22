.class public final enum Lj$/nio/file/AccessMode;
.super Ljava/lang/Enum;
.source "AccessMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/AccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/AccessMode;

.field public static final enum EXECUTE:Lj$/nio/file/AccessMode;

.field public static final enum READ:Lj$/nio/file/AccessMode;

.field public static final enum WRITE:Lj$/nio/file/AccessMode;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/AccessMode;
    .locals 3

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lj$/nio/file/AccessMode;

    sget-object v1, Lj$/nio/file/AccessMode;->READ:Lj$/nio/file/AccessMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/AccessMode;->WRITE:Lj$/nio/file/AccessMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/AccessMode;->EXECUTE:Lj$/nio/file/AccessMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lj$/nio/file/AccessMode;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/AccessMode;->READ:Lj$/nio/file/AccessMode;

    .line 42
    new-instance v0, Lj$/nio/file/AccessMode;

    const-string v1, "WRITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/AccessMode;->WRITE:Lj$/nio/file/AccessMode;

    .line 46
    new-instance v0, Lj$/nio/file/AccessMode;

    const-string v1, "EXECUTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj$/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/AccessMode;->EXECUTE:Lj$/nio/file/AccessMode;

    .line 34
    invoke-static {}, Lj$/nio/file/AccessMode;->$values()[Lj$/nio/file/AccessMode;

    move-result-object v0

    sput-object v0, Lj$/nio/file/AccessMode;->$VALUES:[Lj$/nio/file/AccessMode;

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

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/AccessMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lj$/nio/file/AccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/AccessMode;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/AccessMode;
    .locals 1

    .line 34
    sget-object v0, Lj$/nio/file/AccessMode;->$VALUES:[Lj$/nio/file/AccessMode;

    invoke-virtual {v0}, [Lj$/nio/file/AccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/AccessMode;

    return-object v0
.end method
