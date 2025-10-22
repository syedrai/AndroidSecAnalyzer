.class Lj$/nio/file/FileTreeIterator;
.super Ljava/lang/Object;
.source "FileTreeIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lj$/nio/file/FileTreeWalker$Event;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private next:Lj$/nio/file/FileTreeWalker$Event;

.field private final walker:Lj$/nio/file/FileTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 50
    return-void
.end method

.method varargs constructor <init>(Lj$/nio/file/Path;I[Lj$/nio/file/FileVisitOption;)V
    .locals 2
    .param p1, "start"    # Lj$/nio/file/Path;
    .param p2, "maxDepth"    # I
    .param p3, "options"    # [Lj$/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lj$/nio/file/FileTreeWalker;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lj$/nio/file/FileTreeWalker;-><init>(Ljava/util/Collection;I)V

    iput-object v0, p0, Lj$/nio/file/FileTreeIterator;->walker:Lj$/nio/file/FileTreeWalker;

    .line 71
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->walker:Lj$/nio/file/FileTreeWalker;

    invoke-virtual {v0, p1}, Lj$/nio/file/FileTreeWalker;->walk(Lj$/nio/file/Path;)Lj$/nio/file/FileTreeWalker$Event;

    move-result-object v0

    iput-object v0, p0, Lj$/nio/file/FileTreeIterator;->next:Lj$/nio/file/FileTreeWalker$Event;

    .line 72
    nop

    .line 76
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->next:Lj$/nio/file/FileTreeWalker$Event;

    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v0

    .line 77
    .local v0, "ioe":Ljava/io/IOException;
    if-nez v0, :cond_0

    .line 79
    return-void

    .line 78
    :cond_0
    throw v0
.end method

.method private fetchNextIfNeeded()V
    .locals 4

    .line 82
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->next:Lj$/nio/file/FileTreeWalker$Event;

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->walker:Lj$/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker;->next()Lj$/nio/file/FileTreeWalker$Event;

    move-result-object v0

    .line 84
    .local v0, "ev":Lj$/nio/file/FileTreeWalker$Event;
    :goto_0
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v1

    .line 86
    .local v1, "ioe":Ljava/io/IOException;
    if-nez v1, :cond_1

    .line 90
    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker$Event;->type()Lj$/nio/file/FileTreeWalker$EventType;

    move-result-object v2

    sget-object v3, Lj$/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Lj$/nio/file/FileTreeWalker$EventType;

    if-eq v2, v3, :cond_0

    .line 91
    iput-object v0, p0, Lj$/nio/file/FileTreeIterator;->next:Lj$/nio/file/FileTreeWalker$Event;

    .line 92
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lj$/nio/file/FileTreeIterator;->walker:Lj$/nio/file/FileTreeWalker;

    invoke-virtual {v2}, Lj$/nio/file/FileTreeWalker;->next()Lj$/nio/file/FileTreeWalker$Event;

    move-result-object v0

    .line 95
    .end local v1    # "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 87
    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_1
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 97
    .end local v0    # "ev":Lj$/nio/file/FileTreeWalker$Event;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 121
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->walker:Lj$/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker;->close()V

    .line 122
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->walker:Lj$/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lj$/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    .line 104
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->next:Lj$/nio/file/FileTreeWalker$Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public next()Lj$/nio/file/FileTreeWalker$Event;
    .locals 2

    .line 109
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->walker:Lj$/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-direct {p0}, Lj$/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    .line 112
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->next:Lj$/nio/file/FileTreeWalker$Event;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lj$/nio/file/FileTreeIterator;->next:Lj$/nio/file/FileTreeWalker$Event;

    .line 115
    .local v0, "result":Lj$/nio/file/FileTreeWalker$Event;
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/nio/file/FileTreeIterator;->next:Lj$/nio/file/FileTreeWalker$Event;

    .line 116
    return-object v0

    .line 113
    .end local v0    # "result":Lj$/nio/file/FileTreeWalker$Event;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lj$/nio/file/FileTreeIterator;->next()Lj$/nio/file/FileTreeWalker$Event;

    move-result-object v0

    return-object v0
.end method
