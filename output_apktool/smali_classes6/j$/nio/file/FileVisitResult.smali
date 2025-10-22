.class public final enum Lj$/nio/file/FileVisitResult;
.super Ljava/lang/Enum;
.source "FileVisitResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/FileVisitResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/FileVisitResult;

.field public static final enum CONTINUE:Lj$/nio/file/FileVisitResult;

.field public static final enum SKIP_SIBLINGS:Lj$/nio/file/FileVisitResult;

.field public static final enum SKIP_SUBTREE:Lj$/nio/file/FileVisitResult;

.field public static final enum TERMINATE:Lj$/nio/file/FileVisitResult;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/FileVisitResult;
    .locals 3

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lj$/nio/file/FileVisitResult;

    sget-object v1, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/FileVisitResult;->TERMINATE:Lj$/nio/file/FileVisitResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/FileVisitResult;->SKIP_SUBTREE:Lj$/nio/file/FileVisitResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Lj$/nio/file/FileVisitResult;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lj$/nio/file/FileVisitResult;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    .line 46
    new-instance v0, Lj$/nio/file/FileVisitResult;

    const-string v1, "TERMINATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/FileVisitResult;->TERMINATE:Lj$/nio/file/FileVisitResult;

    .line 53
    new-instance v0, Lj$/nio/file/FileVisitResult;

    const-string v1, "SKIP_SUBTREE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj$/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/FileVisitResult;->SKIP_SUBTREE:Lj$/nio/file/FileVisitResult;

    .line 61
    new-instance v0, Lj$/nio/file/FileVisitResult;

    const-string v1, "SKIP_SIBLINGS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lj$/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Lj$/nio/file/FileVisitResult;

    .line 36
    invoke-static {}, Lj$/nio/file/FileVisitResult;->$values()[Lj$/nio/file/FileVisitResult;

    move-result-object v0

    sput-object v0, Lj$/nio/file/FileVisitResult;->$VALUES:[Lj$/nio/file/FileVisitResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/FileVisitResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lj$/nio/file/FileVisitResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/FileVisitResult;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/FileVisitResult;
    .locals 1

    .line 36
    sget-object v0, Lj$/nio/file/FileVisitResult;->$VALUES:[Lj$/nio/file/FileVisitResult;

    invoke-virtual {v0}, [Lj$/nio/file/FileVisitResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/FileVisitResult;

    return-object v0
.end method
