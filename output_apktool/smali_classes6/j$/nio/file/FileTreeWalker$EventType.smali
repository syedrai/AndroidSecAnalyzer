.class final enum Lj$/nio/file/FileTreeWalker$EventType;
.super Ljava/lang/Enum;
.source "FileTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/nio/file/FileTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/FileTreeWalker$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/nio/file/FileTreeWalker$EventType;

.field public static final enum END_DIRECTORY:Lj$/nio/file/FileTreeWalker$EventType;

.field public static final enum ENTRY:Lj$/nio/file/FileTreeWalker$EventType;

.field public static final enum START_DIRECTORY:Lj$/nio/file/FileTreeWalker$EventType;


# direct methods
.method private static synthetic $values()[Lj$/nio/file/FileTreeWalker$EventType;
    .locals 3

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Lj$/nio/file/FileTreeWalker$EventType;

    sget-object v1, Lj$/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Lj$/nio/file/FileTreeWalker$EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Lj$/nio/file/FileTreeWalker$EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/FileTreeWalker$EventType;->ENTRY:Lj$/nio/file/FileTreeWalker$EventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 113
    new-instance v0, Lj$/nio/file/FileTreeWalker$EventType;

    const-string v1, "START_DIRECTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Lj$/nio/file/FileTreeWalker$EventType;

    .line 117
    new-instance v0, Lj$/nio/file/FileTreeWalker$EventType;

    const-string v1, "END_DIRECTORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Lj$/nio/file/FileTreeWalker$EventType;

    .line 121
    new-instance v0, Lj$/nio/file/FileTreeWalker$EventType;

    const-string v1, "ENTRY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj$/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/FileTreeWalker$EventType;->ENTRY:Lj$/nio/file/FileTreeWalker$EventType;

    .line 109
    invoke-static {}, Lj$/nio/file/FileTreeWalker$EventType;->$values()[Lj$/nio/file/FileTreeWalker$EventType;

    move-result-object v0

    sput-object v0, Lj$/nio/file/FileTreeWalker$EventType;->$VALUES:[Lj$/nio/file/FileTreeWalker$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/FileTreeWalker$EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 109
    const-class v0, Lj$/nio/file/FileTreeWalker$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method

.method public static values()[Lj$/nio/file/FileTreeWalker$EventType;
    .locals 1

    .line 109
    sget-object v0, Lj$/nio/file/FileTreeWalker$EventType;->$VALUES:[Lj$/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v0}, [Lj$/nio/file/FileTreeWalker$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method
