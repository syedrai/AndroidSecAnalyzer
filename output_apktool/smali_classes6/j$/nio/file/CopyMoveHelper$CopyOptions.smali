.class Lj$/nio/file/CopyMoveHelper$CopyOptions;
.super Ljava/lang/Object;
.source "CopyMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/nio/file/CopyMoveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyOptions"
.end annotation


# instance fields
.field copyAttributes:Z

.field followLinks:Z

.field replaceExisting:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    .line 45
    iput-boolean v0, p0, Lj$/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    .line 48
    return-void
.end method

.method static varargs parse([Lj$/nio/file/CopyOption;)Lj$/nio/file/CopyMoveHelper$CopyOptions;
    .locals 7
    .param p0, "options"    # [Lj$/nio/file/CopyOption;

    .line 51
    new-instance v0, Lj$/nio/file/CopyMoveHelper$CopyOptions;

    invoke-direct {v0}, Lj$/nio/file/CopyMoveHelper$CopyOptions;-><init>()V

    .line 52
    .local v0, "result":Lj$/nio/file/CopyMoveHelper$CopyOptions;
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    .line 53
    .local v4, "option":Lj$/nio/file/CopyOption;
    sget-object v5, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 54
    iput-boolean v6, v0, Lj$/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    .line 55
    goto :goto_1

    .line 57
    :cond_0
    sget-object v5, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    if-ne v4, v5, :cond_1

    .line 58
    iput-boolean v2, v0, Lj$/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    .line 59
    goto :goto_1

    .line 61
    :cond_1
    sget-object v5, Lj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

    if-ne v4, v5, :cond_2

    .line 62
    iput-boolean v6, v0, Lj$/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    .line 63
    nop

    .line 52
    .end local v4    # "option":Lj$/nio/file/CopyOption;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .restart local v4    # "option":Lj$/nio/file/CopyOption;
    :cond_2
    if-nez v4, :cond_3

    .line 66
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 67
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a recognized copy option"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v4    # "option":Lj$/nio/file/CopyOption;
    :cond_4
    return-object v0
.end method
