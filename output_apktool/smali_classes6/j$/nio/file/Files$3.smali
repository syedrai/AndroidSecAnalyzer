.class synthetic Lj$/nio/file/Files$3;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/nio/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$nio$file$FileTreeWalker$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2724
    invoke-static {}, Lj$/nio/file/FileTreeWalker$EventType;->values()[Lj$/nio/file/FileTreeWalker$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lj$/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    :try_start_0
    sget-object v0, Lj$/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    sget-object v1, Lj$/nio/file/FileTreeWalker$EventType;->ENTRY:Lj$/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lj$/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    sget-object v1, Lj$/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Lj$/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lj$/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    sget-object v1, Lj$/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Lj$/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
