.class Lj$/nio/file/Path$1;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/nio/file/Path$-CC;->$default$iterator(Lj$/nio/file/Path;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lj$/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Lj$/nio/file/Path;


# direct methods
.method constructor <init>(Lj$/nio/file/Path;)V
    .locals 1
    .param p1, "this$0"    # Lj$/nio/file/Path;

    .line 918
    iput-object p1, p0, Lj$/nio/file/Path$1;->this$0:Lj$/nio/file/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    const/4 v0, 0x0

    iput v0, p0, Lj$/nio/file/Path$1;->i:I

    .line 918
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 923
    iget v0, p0, Lj$/nio/file/Path$1;->i:I

    iget-object v1, p0, Lj$/nio/file/Path$1;->this$0:Lj$/nio/file/Path;

    invoke-interface {v1}, Lj$/nio/file/Path;->getNameCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lj$/nio/file/Path;
    .locals 2

    .line 928
    iget v0, p0, Lj$/nio/file/Path$1;->i:I

    iget-object v1, p0, Lj$/nio/file/Path$1;->this$0:Lj$/nio/file/Path;

    invoke-interface {v1}, Lj$/nio/file/Path;->getNameCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 929
    iget-object v0, p0, Lj$/nio/file/Path$1;->this$0:Lj$/nio/file/Path;

    iget v1, p0, Lj$/nio/file/Path$1;->i:I

    invoke-interface {v0, v1}, Lj$/nio/file/Path;->getName(I)Lj$/nio/file/Path;

    move-result-object v0

    .line 930
    .local v0, "result":Lj$/nio/file/Path;
    iget v1, p0, Lj$/nio/file/Path$1;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj$/nio/file/Path$1;->i:I

    .line 931
    return-object v0

    .line 933
    .end local v0    # "result":Lj$/nio/file/Path;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 918
    invoke-virtual {p0}, Lj$/nio/file/Path$1;->next()Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
