.class public final enum Lj$/nio/file/FileVisitOption;
.super Ljava/lang/Enum;
.source "FileVisitOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/FileVisitOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/FileVisitOption;

.field public static final enum FOLLOW_LINKS:Lj$/nio/file/FileVisitOption;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/FileVisitOption;
    .locals 3

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lj$/nio/file/FileVisitOption;

    sget-object v1, Lj$/nio/file/FileVisitOption;->FOLLOW_LINKS:Lj$/nio/file/FileVisitOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lj$/nio/file/FileVisitOption;

    const-string v1, "FOLLOW_LINKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/FileVisitOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/FileVisitOption;->FOLLOW_LINKS:Lj$/nio/file/FileVisitOption;

    .line 36
    invoke-static {}, Lj$/nio/file/FileVisitOption;->$values()[Lj$/nio/file/FileVisitOption;

    move-result-object v0

    sput-object v0, Lj$/nio/file/FileVisitOption;->$VALUES:[Lj$/nio/file/FileVisitOption;

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

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/FileVisitOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lj$/nio/file/FileVisitOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/FileVisitOption;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/FileVisitOption;
    .locals 1

    .line 36
    sget-object v0, Lj$/nio/file/FileVisitOption;->$VALUES:[Lj$/nio/file/FileVisitOption;

    invoke-virtual {v0}, [Lj$/nio/file/FileVisitOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/FileVisitOption;

    return-object v0
.end method
