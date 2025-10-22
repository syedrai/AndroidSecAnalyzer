.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;
.super Ljava/lang/Object;
.source "WifiEapTlsCreateDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportButtonOnClickListener"
.end annotation


# instance fields
.field private mMimeType:Ljava/lang/String;

.field private mRequestCode:I

.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;ILjava/lang/String;)V
    .locals 0
    .param p2, "requestCode"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "requestCode",
            "mimeType"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput p2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->mRequestCode:I

    .line 302
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->mMimeType:Ljava/lang/String;

    .line 303
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "certIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    iget v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "wifi_eap_tls"

    const-string v3, "no file picker: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
