.class public final synthetic Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda4;->f$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda4;->f$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    check-cast p1, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->$r8$lambda$D01rR3CkCwN-gjsG-YLby-Z490k(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V

    return-void
.end method
