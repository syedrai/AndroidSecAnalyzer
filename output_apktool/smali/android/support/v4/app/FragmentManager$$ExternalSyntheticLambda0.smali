.class public final synthetic Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public synthetic f$0:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroid/support/v4/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->lambda$attachController$5$android-support-v4-app-FragmentManager()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
