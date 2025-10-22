.class public final synthetic Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# instance fields
.field public synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$onPreferenceChange$0(Ljava/lang/Object;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V

    return-void
.end method
