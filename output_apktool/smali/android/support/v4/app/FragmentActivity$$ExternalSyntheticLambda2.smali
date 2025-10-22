.class public final synthetic Landroid/support/v4/app/FragmentActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public synthetic f$0:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity$$ExternalSyntheticLambda2;->f$0:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$$ExternalSyntheticLambda2;->f$0:Landroid/support/v4/app/FragmentActivity;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->lambda$init$2$android-support-v4-app-FragmentActivity(Landroid/content/Intent;)V

    return-void
.end method
