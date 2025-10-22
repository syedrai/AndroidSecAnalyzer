.class public final enum Lj$/nio/file/attribute/AclEntryFlag;
.super Ljava/lang/Enum;
.source "AclEntryFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/attribute/AclEntryFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/attribute/AclEntryFlag;

.field public static final enum DIRECTORY_INHERIT:Lj$/nio/file/attribute/AclEntryFlag;

.field public static final enum FILE_INHERIT:Lj$/nio/file/attribute/AclEntryFlag;

.field public static final enum INHERIT_ONLY:Lj$/nio/file/attribute/AclEntryFlag;

.field public static final enum NO_PROPAGATE_INHERIT:Lj$/nio/file/attribute/AclEntryFlag;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/attribute/AclEntryFlag;
    .locals 3

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lj$/nio/file/attribute/AclEntryFlag;

    sget-object v1, Lj$/nio/file/attribute/AclEntryFlag;->FILE_INHERIT:Lj$/nio/file/attribute/AclEntryFlag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryFlag;->DIRECTORY_INHERIT:Lj$/nio/file/attribute/AclEntryFlag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryFlag;->NO_PROPAGATE_INHERIT:Lj$/nio/file/attribute/AclEntryFlag;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryFlag;->INHERIT_ONLY:Lj$/nio/file/attribute/AclEntryFlag;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lj$/nio/file/attribute/AclEntryFlag;

    const-string v1, "FILE_INHERIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryFlag;->FILE_INHERIT:Lj$/nio/file/attribute/AclEntryFlag;

    .line 50
    new-instance v0, Lj$/nio/file/attribute/AclEntryFlag;

    const-string v1, "DIRECTORY_INHERIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryFlag;->DIRECTORY_INHERIT:Lj$/nio/file/attribute/AclEntryFlag;

    .line 57
    new-instance v0, Lj$/nio/file/attribute/AclEntryFlag;

    const-string v1, "NO_PROPAGATE_INHERIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryFlag;->NO_PROPAGATE_INHERIT:Lj$/nio/file/attribute/AclEntryFlag;

    .line 64
    new-instance v0, Lj$/nio/file/attribute/AclEntryFlag;

    const-string v1, "INHERIT_ONLY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryFlag;->INHERIT_ONLY:Lj$/nio/file/attribute/AclEntryFlag;

    .line 38
    invoke-static {}, Lj$/nio/file/attribute/AclEntryFlag;->$values()[Lj$/nio/file/attribute/AclEntryFlag;

    move-result-object v0

    sput-object v0, Lj$/nio/file/attribute/AclEntryFlag;->$VALUES:[Lj$/nio/file/attribute/AclEntryFlag;

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

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/attribute/AclEntryFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lj$/nio/file/attribute/AclEntryFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/AclEntryFlag;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/attribute/AclEntryFlag;
    .locals 1

    .line 38
    sget-object v0, Lj$/nio/file/attribute/AclEntryFlag;->$VALUES:[Lj$/nio/file/attribute/AclEntryFlag;

    invoke-virtual {v0}, [Lj$/nio/file/attribute/AclEntryFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/attribute/AclEntryFlag;

    return-object v0
.end method
