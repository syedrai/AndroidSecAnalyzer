.class public final enum Lj$/nio/file/attribute/AclEntryPermission;
.super Ljava/lang/Enum;
.source "AclEntryPermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/attribute/AclEntryPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/attribute/AclEntryPermission;

.field public static final ADD_FILE:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final ADD_SUBDIRECTORY:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum APPEND_DATA:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum DELETE:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum DELETE_CHILD:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum EXECUTE:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final LIST_DIRECTORY:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_ACL:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_ATTRIBUTES:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_DATA:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum READ_NAMED_ATTRS:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum SYNCHRONIZE:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_ACL:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_ATTRIBUTES:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_DATA:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_NAMED_ATTRS:Lj$/nio/file/attribute/AclEntryPermission;

.field public static final enum WRITE_OWNER:Lj$/nio/file/attribute/AclEntryPermission;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/attribute/AclEntryPermission;
    .locals 3

    .line 35
    const/16 v0, 0xe

    new-array v0, v0, [Lj$/nio/file/attribute/AclEntryPermission;

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->READ_DATA:Lj$/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Lj$/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Lj$/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Lj$/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Lj$/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->EXECUTE:Lj$/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Lj$/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Lj$/nio/file/attribute/AclEntryPermission;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Lj$/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->DELETE:Lj$/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->READ_ACL:Lj$/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Lj$/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Lj$/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryPermission;->SYNCHRONIZE:Lj$/nio/file/attribute/AclEntryPermission;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->READ_DATA:Lj$/nio/file/attribute/AclEntryPermission;

    .line 45
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_DATA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Lj$/nio/file/attribute/AclEntryPermission;

    .line 50
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "APPEND_DATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Lj$/nio/file/attribute/AclEntryPermission;

    .line 59
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_NAMED_ATTRS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Lj$/nio/file/attribute/AclEntryPermission;

    .line 68
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_NAMED_ATTRS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Lj$/nio/file/attribute/AclEntryPermission;

    .line 73
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "EXECUTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->EXECUTE:Lj$/nio/file/attribute/AclEntryPermission;

    .line 78
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "DELETE_CHILD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Lj$/nio/file/attribute/AclEntryPermission;

    .line 83
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_ATTRIBUTES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Lj$/nio/file/attribute/AclEntryPermission;

    .line 88
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_ATTRIBUTES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Lj$/nio/file/attribute/AclEntryPermission;

    .line 93
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "DELETE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->DELETE:Lj$/nio/file/attribute/AclEntryPermission;

    .line 98
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "READ_ACL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->READ_ACL:Lj$/nio/file/attribute/AclEntryPermission;

    .line 103
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_ACL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Lj$/nio/file/attribute/AclEntryPermission;

    .line 108
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "WRITE_OWNER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Lj$/nio/file/attribute/AclEntryPermission;

    .line 114
    new-instance v0, Lj$/nio/file/attribute/AclEntryPermission;

    const-string v1, "SYNCHRONIZE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->SYNCHRONIZE:Lj$/nio/file/attribute/AclEntryPermission;

    .line 35
    invoke-static {}, Lj$/nio/file/attribute/AclEntryPermission;->$values()[Lj$/nio/file/attribute/AclEntryPermission;

    move-result-object v0

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->$VALUES:[Lj$/nio/file/attribute/AclEntryPermission;

    .line 119
    sget-object v0, Lj$/nio/file/attribute/AclEntryPermission;->READ_DATA:Lj$/nio/file/attribute/AclEntryPermission;

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->LIST_DIRECTORY:Lj$/nio/file/attribute/AclEntryPermission;

    .line 124
    sget-object v0, Lj$/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Lj$/nio/file/attribute/AclEntryPermission;

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->ADD_FILE:Lj$/nio/file/attribute/AclEntryPermission;

    .line 129
    sget-object v0, Lj$/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Lj$/nio/file/attribute/AclEntryPermission;

    sput-object v0, Lj$/nio/file/attribute/AclEntryPermission;->ADD_SUBDIRECTORY:Lj$/nio/file/attribute/AclEntryPermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/attribute/AclEntryPermission;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lj$/nio/file/attribute/AclEntryPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/attribute/AclEntryPermission;
    .locals 1

    .line 35
    sget-object v0, Lj$/nio/file/attribute/AclEntryPermission;->$VALUES:[Lj$/nio/file/attribute/AclEntryPermission;

    invoke-virtual {v0}, [Lj$/nio/file/attribute/AclEntryPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/attribute/AclEntryPermission;

    return-object v0
.end method
