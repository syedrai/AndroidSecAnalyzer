.class public final enum Lj$/nio/file/LinkOption;
.super Ljava/lang/Enum;
.source "LinkOption.java"

# interfaces
.implements Lj$/nio/file/OpenOption;
.implements Lj$/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/LinkOption;",
        ">;",
        "Lj$/nio/file/OpenOption;",
        "Lj$/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/LinkOption;

.field public static final enum NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/LinkOption;
    .locals 3

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Lj$/nio/file/LinkOption;

    sget-object v1, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lj$/nio/file/LinkOption;

    const-string v1, "NOFOLLOW_LINKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/LinkOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    .line 34
    invoke-static {}, Lj$/nio/file/LinkOption;->$values()[Lj$/nio/file/LinkOption;

    move-result-object v0

    sput-object v0, Lj$/nio/file/LinkOption;->$VALUES:[Lj$/nio/file/LinkOption;

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

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/LinkOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lj$/nio/file/LinkOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/LinkOption;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/LinkOption;
    .locals 1

    .line 34
    sget-object v0, Lj$/nio/file/LinkOption;->$VALUES:[Lj$/nio/file/LinkOption;

    invoke-virtual {v0}, [Lj$/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/LinkOption;

    return-object v0
.end method
