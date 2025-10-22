.class public final synthetic Lcom/google/common/io/MoreFiles$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/graph/SuccessorsFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, Lj$/nio/file/Path;

    invoke-static {p1}, Lcom/google/common/io/MoreFiles;->$r8$lambda$OKnTcUvazX0H--5Oy9JeARc-PgQ(Lj$/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
