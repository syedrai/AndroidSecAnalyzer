.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;
.super Landroid/os/AsyncTask;
.source "PolicyManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowCaCertificateListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 4145
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/PolicyManagementFragment-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    return-void
.end method

.method private getCaCertificateSubjectDnList()[Ljava/lang/String;
    .locals 8

    .line 4168
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmAdminComponentName(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getInstalledCaCerts(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 4169
    .local v0, "installedCaCerts":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .line 4170
    .local v1, "caSubjectDnList":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 4172
    const/4 v2, 0x0

    .line 4173
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 4175
    .local v4, "installedCaCert":[B
    :try_start_0
    const-string v5, "X.509"

    .line 4177
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4178
    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4179
    .local v5, "certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    :try_start_1
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4182
    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    move v2, v6

    goto :goto_2

    .line 4180
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v6    # "i":I
    .restart local v2    # "i":I
    :catch_1
    move-exception v5

    move v6, v2

    move-object v2, v5

    .line 4181
    .local v2, "e":Ljava/security/cert/CertificateException;
    .restart local v6    # "i":I
    :goto_1
    const-string v5, "PolicyManagement"

    const-string v7, "getCaCertificateSubjectDnList: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v6

    .line 4183
    .end local v4    # "installedCaCert":[B
    .end local v6    # "i":I
    .local v2, "i":I
    :goto_2
    goto :goto_0

    .line 4185
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 4145
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 4149
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->getCaCertificateSubjectDnList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "installedCaCertificateDnList"
        }
    .end annotation

    .line 4145
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 3
    .param p1, "installedCaCertificateDnList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "installedCaCertificateDnList"
        }
    .end annotation

    .line 4154
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4157
    :cond_0
    if-nez p1, :cond_1

    .line 4158
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v1, Lcom/afwsamples/testdpc/R$string;->no_ca_certificate:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4160
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v2, Lcom/afwsamples/testdpc/R$string;->installed_ca_title:I

    .line 4161
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4162
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4165
    :goto_0
    return-void

    .line 4155
    :cond_2
    :goto_1
    return-void
.end method
