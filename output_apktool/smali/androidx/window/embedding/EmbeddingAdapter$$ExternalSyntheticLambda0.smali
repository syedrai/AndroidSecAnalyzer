.class public final synthetic Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/window/reflection/Predicate2;


# instance fields
.field public synthetic f$0:Landroidx/window/embedding/SplitPinRule;

.field public synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/SplitPinRule;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/SplitPinRule;

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/SplitPinRule;

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    check-cast p1, Landroid/view/WindowMetrics;

    invoke-static {v0, v1, p1}, Landroidx/window/embedding/EmbeddingAdapter;->$r8$lambda$u1xob5qvFdMK7CejHoSUMthl1J4(Landroidx/window/embedding/SplitPinRule;Landroid/content/Context;Landroid/view/WindowMetrics;)Z

    move-result p1

    return p1
.end method
