.class public Lcom/afwsamples/testdpc/comp/DeviceOwnerService;
.super Landroid/app/Service;
.source "DeviceOwnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceOwnerService"


# instance fields
.field private mBinder:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 38
    new-instance v0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;-><init>(Landroid/content/Context;Lcom/afwsamples/testdpc/comp/DeviceOwnerService-IA;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService;->mBinder:Landroid/os/Binder;

    .line 39
    return-void
.end method
