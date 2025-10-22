.class public final synthetic Lcom/afwsamples/testdpc/BootReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;

    move-result-object p1

    return-object p1
.end method
