.class public final synthetic Landroid/support/v7/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public synthetic f$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticLambda0;->f$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticLambda0;->f$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->onBackPressed()Z

    return-void
.end method
