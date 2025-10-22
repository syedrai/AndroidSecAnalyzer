.class public final synthetic Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

.field public synthetic f$1:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda1;->f$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda1;->f$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/AssetFileDescriptor;

    check-cast p1, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->$r8$lambda$07EKFnUnoLIdS3YtzEUdaTIDZ2s(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Landroid/content/res/AssetFileDescriptor;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V

    return-void
.end method
