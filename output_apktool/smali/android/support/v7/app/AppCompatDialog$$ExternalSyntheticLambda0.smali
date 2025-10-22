.class public final synthetic Landroid/support/v7/app/AppCompatDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# instance fields
.field public synthetic f$0:Landroid/support/v7/app/AppCompatDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v7/app/AppCompatDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDialog$$ExternalSyntheticLambda0;->f$0:Landroid/support/v7/app/AppCompatDialog;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDialog$$ExternalSyntheticLambda0;->f$0:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDialog;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
