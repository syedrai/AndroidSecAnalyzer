.class public final synthetic Lcom/afwsamples/testdpc/BootReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;

    invoke-static {p1}, Lcom/afwsamples/testdpc/BootReceiver;->lambda$onReceive$0(Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;)V

    return-void
.end method
