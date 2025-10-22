.class Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KioskModeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KioskAppsArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "resource",
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    .line 234
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 235
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->-$$Nest$fgetmPackageManager(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 247
    if-nez p2, :cond_0

    .line 248
    nop

    .line 249
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/afwsamples/testdpc/R$layout;->kiosk_mode_item:I

    invoke-virtual {v1, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 251
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->pkg_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 252
    .local v1, "iconImageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->-$$Nest$fgetmPackageManager(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    sget v2, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 254
    .local v2, "pkgNameTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    sget v4, Lcom/afwsamples/testdpc/R$string;->stop_kiosk_mode:I

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->-$$Nest$fgetmPackageManager(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :goto_0
    return-object p2

    .line 242
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "iconImageView":Landroid/widget/ImageView;
    .end local v2    # "pkgNameTextView":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to retrieve application info for the entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KioskModeActivity"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v1, 0x0

    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 265
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->onBackdoorClicked()V

    .line 267
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 271
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0, p3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, "appPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/Util;->isRunningOnTvDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "launchAppIntent":Landroid/content/Intent;
    goto :goto_0

    .line 276
    .end local v2    # "launchAppIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 278
    .restart local v2    # "launchAppIntent":Landroid/content/Intent;
    :goto_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v3, v2}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void
.end method
