.class public final synthetic Lj$/nio/file/Files$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/Closeable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Closeable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/Files$$ExternalSyntheticLambda1;->f$0:Ljava/io/Closeable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/Files$$ExternalSyntheticLambda1;->f$0:Ljava/io/Closeable;

    invoke-static {v0}, Lj$/nio/file/Files;->lambda$asUncheckedRunnable$0(Ljava/io/Closeable;)V

    return-void
.end method
