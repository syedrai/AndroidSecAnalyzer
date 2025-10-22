.class public final synthetic Lj$/nio/file/Files$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lj$/nio/file/FileTreeIterator;


# direct methods
.method public synthetic constructor <init>(Lj$/nio/file/FileTreeIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/Files$$ExternalSyntheticLambda2;->f$0:Lj$/nio/file/FileTreeIterator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/Files$$ExternalSyntheticLambda2;->f$0:Lj$/nio/file/FileTreeIterator;

    invoke-virtual {v0}, Lj$/nio/file/FileTreeIterator;->close()V

    return-void
.end method
