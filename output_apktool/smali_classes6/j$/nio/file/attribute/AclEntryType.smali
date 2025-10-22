.class public final enum Lj$/nio/file/attribute/AclEntryType;
.super Ljava/lang/Enum;
.source "AclEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/attribute/AclEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/attribute/AclEntryType;

.field public static final enum ALARM:Lj$/nio/file/attribute/AclEntryType;

.field public static final enum ALLOW:Lj$/nio/file/attribute/AclEntryType;

.field public static final enum AUDIT:Lj$/nio/file/attribute/AclEntryType;

.field public static final enum DENY:Lj$/nio/file/attribute/AclEntryType;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/attribute/AclEntryType;
    .locals 3

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lj$/nio/file/attribute/AclEntryType;

    sget-object v1, Lj$/nio/file/attribute/AclEntryType;->ALLOW:Lj$/nio/file/attribute/AclEntryType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryType;->DENY:Lj$/nio/file/attribute/AclEntryType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryType;->AUDIT:Lj$/nio/file/attribute/AclEntryType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/attribute/AclEntryType;->ALARM:Lj$/nio/file/attribute/AclEntryType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lj$/nio/file/attribute/AclEntryType;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryType;->ALLOW:Lj$/nio/file/attribute/AclEntryType;

    .line 43
    new-instance v0, Lj$/nio/file/attribute/AclEntryType;

    const-string v1, "DENY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryType;->DENY:Lj$/nio/file/attribute/AclEntryType;

    .line 49
    new-instance v0, Lj$/nio/file/attribute/AclEntryType;

    const-string v1, "AUDIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryType;->AUDIT:Lj$/nio/file/attribute/AclEntryType;

    .line 55
    new-instance v0, Lj$/nio/file/attribute/AclEntryType;

    const-string v1, "ALARM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lj$/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/attribute/AclEntryType;->ALARM:Lj$/nio/file/attribute/AclEntryType;

    .line 34
    invoke-static {}, Lj$/nio/file/attribute/AclEntryType;->$values()[Lj$/nio/file/attribute/AclEntryType;

    move-result-object v0

    sput-object v0, Lj$/nio/file/attribute/AclEntryType;->$VALUES:[Lj$/nio/file/attribute/AclEntryType;

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

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/attribute/AclEntryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lj$/nio/file/attribute/AclEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/AclEntryType;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/attribute/AclEntryType;
    .locals 1

    .line 34
    sget-object v0, Lj$/nio/file/attribute/AclEntryType;->$VALUES:[Lj$/nio/file/attribute/AclEntryType;

    invoke-virtual {v0}, [Lj$/nio/file/attribute/AclEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/attribute/AclEntryType;

    return-object v0
.end method
