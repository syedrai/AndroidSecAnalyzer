.class public final enum Lj$/nio/file/attribute/PosixFilePermission;
.super Ljava/lang/Enum;
.source "PosixFilePermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/attribute/PosixFilePermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/attribute/PosixFilePermission;

.field public static final enum GROUP_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

.field public static final enum GROUP_READ:Lj$/nio/file/attribute/PosixFilePermission;

.field public static final enum GROUP_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OTHERS_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OTHERS_READ:Lj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OTHERS_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OWNER_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OWNER_READ:Lj$/nio/file/attribute/PosixFilePermission;

.field public static final enum OWNER_WRITE:Lj$/nio/file/attribute/PosixFilePermission;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/attribute/PosixFilePermission;
    .locals 3

    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [Lj$/nio/file/attribute/PosixFilePermission;

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Lj$/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Lj$/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Lj$/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OWNER_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Lj$/nio/file/attribute/PosixFilePermission;

    .line 48
    new-instance v0, Lj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OWNER_WRITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 53
    new-instance v0, Lj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OWNER_EXECUTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 58
    new-instance v0, Lj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "GROUP_READ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Lj$/nio/file/attribute/PosixFilePermission;

    .line 63
    new-instance v0, Lj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "GROUP_WRITE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 68
    new-instance v0, Lj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "GROUP_EXECUTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 73
    new-instance v0, Lj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OTHERS_READ"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Lj$/nio/file/attribute/PosixFilePermission;

    .line 78
    new-instance v0, Lj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OTHERS_WRITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 83
    new-instance v0, Lj$/nio/file/attribute/PosixFilePermission;

    const-string v1, "OTHERS_EXECUTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/PosixFilePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 38
    invoke-static {}, Lj$/nio/file/attribute/PosixFilePermission;->$values()[Lj$/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    sput-object v0, Lj$/nio/file/attribute/PosixFilePermission;->$VALUES:[Lj$/nio/file/attribute/PosixFilePermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/attribute/PosixFilePermission;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lj$/nio/file/attribute/PosixFilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/attribute/PosixFilePermission;
    .locals 1

    .line 38
    sget-object v0, Lj$/nio/file/attribute/PosixFilePermission;->$VALUES:[Lj$/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0}, [Lj$/nio/file/attribute/PosixFilePermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method
