.class public final synthetic Landroidx/lifecycle/internal/SavedStateHandleImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public synthetic f$0:Landroidx/lifecycle/internal/SavedStateHandleImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/internal/SavedStateHandleImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/internal/SavedStateHandleImpl;

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/internal/SavedStateHandleImpl;

    invoke-static {v0}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->$r8$lambda$-OwJNegmCu5Gt1ZLmTJOtaJJkzo(Landroidx/lifecycle/internal/SavedStateHandleImpl;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
