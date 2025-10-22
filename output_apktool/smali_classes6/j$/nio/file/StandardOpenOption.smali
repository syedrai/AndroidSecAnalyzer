.class public final enum Lj$/nio/file/StandardOpenOption;
.super Ljava/lang/Enum;
.source "StandardOpenOption.java"

# interfaces
.implements Lj$/nio/file/OpenOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/StandardOpenOption;",
        ">;",
        "Lj$/nio/file/OpenOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/StandardOpenOption;

.field public static final enum APPEND:Lj$/nio/file/StandardOpenOption;

.field public static final enum CREATE:Lj$/nio/file/StandardOpenOption;

.field public static final enum CREATE_NEW:Lj$/nio/file/StandardOpenOption;

.field public static final enum DELETE_ON_CLOSE:Lj$/nio/file/StandardOpenOption;

.field public static final enum DSYNC:Lj$/nio/file/StandardOpenOption;

.field public static final enum READ:Lj$/nio/file/StandardOpenOption;

.field public static final enum SPARSE:Lj$/nio/file/StandardOpenOption;

.field public static final enum SYNC:Lj$/nio/file/StandardOpenOption;

.field public static final enum TRUNCATE_EXISTING:Lj$/nio/file/StandardOpenOption;

.field public static final enum WRITE:Lj$/nio/file/StandardOpenOption;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/StandardOpenOption;
    .locals 3

    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [Lj$/nio/file/StandardOpenOption;

    sget-object v1, Lj$/nio/file/StandardOpenOption;->READ:Lj$/nio/file/StandardOpenOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardOpenOption;->WRITE:Lj$/nio/file/StandardOpenOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardOpenOption;->APPEND:Lj$/nio/file/StandardOpenOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Lj$/nio/file/StandardOpenOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardOpenOption;->CREATE:Lj$/nio/file/StandardOpenOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardOpenOption;->CREATE_NEW:Lj$/nio/file/StandardOpenOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Lj$/nio/file/StandardOpenOption;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardOpenOption;->SPARSE:Lj$/nio/file/StandardOpenOption;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardOpenOption;->SYNC:Lj$/nio/file/StandardOpenOption;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/StandardOpenOption;->DSYNC:Lj$/nio/file/StandardOpenOption;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->READ:Lj$/nio/file/StandardOpenOption;

    .line 43
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "WRITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->WRITE:Lj$/nio/file/StandardOpenOption;

    .line 52
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "APPEND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->APPEND:Lj$/nio/file/StandardOpenOption;

    .line 59
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "TRUNCATE_EXISTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Lj$/nio/file/StandardOpenOption;

    .line 68
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "CREATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->CREATE:Lj$/nio/file/StandardOpenOption;

    .line 76
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "CREATE_NEW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->CREATE_NEW:Lj$/nio/file/StandardOpenOption;

    .line 100
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "DELETE_ON_CLOSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Lj$/nio/file/StandardOpenOption;

    .line 108
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "SPARSE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->SPARSE:Lj$/nio/file/StandardOpenOption;

    .line 116
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "SYNC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->SYNC:Lj$/nio/file/StandardOpenOption;

    .line 124
    new-instance v0, Lj$/nio/file/StandardOpenOption;

    const-string v1, "DSYNC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lj$/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/StandardOpenOption;->DSYNC:Lj$/nio/file/StandardOpenOption;

    .line 34
    invoke-static {}, Lj$/nio/file/StandardOpenOption;->$values()[Lj$/nio/file/StandardOpenOption;

    move-result-object v0

    sput-object v0, Lj$/nio/file/StandardOpenOption;->$VALUES:[Lj$/nio/file/StandardOpenOption;

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

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/StandardOpenOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lj$/nio/file/StandardOpenOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/StandardOpenOption;
    .locals 1

    .line 34
    sget-object v0, Lj$/nio/file/StandardOpenOption;->$VALUES:[Lj$/nio/file/StandardOpenOption;

    invoke-virtual {v0}, [Lj$/nio/file/StandardOpenOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/StandardOpenOption;

    return-object v0
.end method
