.class Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DelegationScopesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELEGATION_SECURITY_LOGGING:Ljava/lang/String; = "delegation-security-logging"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "res",
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .local v1, "viewHolder":Landroid/widget/CheckBox;
    goto :goto_1

    .line 31
    .end local v1    # "viewHolder":Landroid/widget/CheckBox;
    :cond_1
    :goto_0
    nop

    .line 32
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$layout;->delegation_scope_row:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 33
    sget v1, Lcom/afwsamples/testdpc/R$id;->checkbox_delegation_scope:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 34
    .restart local v1    # "viewHolder":Landroid/widget/CheckBox;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :goto_1
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    .line 40
    .local v2, "delegationScope":Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    iget-boolean v3, v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 41
    iget-object v3, v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->scope:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    goto :goto_2

    :sswitch_0
    const-string v0, "delegation-security-logging"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_3

    :sswitch_1
    const-string v4, "delegation-cert-install"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :sswitch_2
    const-string v0, "delegation-package-access"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_3

    :sswitch_3
    const-string v0, "delegation-block-uninstall"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_3

    :sswitch_4
    const-string v0, "delegation-network-logging"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_3

    :sswitch_5
    const-string v0, "delegation-app-restrictions"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :sswitch_6
    const-string v0, "delegation-enable-system-app"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_3

    :sswitch_7
    const-string v0, "delegation-cert-selection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_3

    :sswitch_8
    const-string v0, "delegation-permission-grant"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_3

    :goto_2
    const/4 v0, -0x1

    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 67
    :pswitch_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->delegation_scope_cert_selection:I

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_4

    .line 64
    :pswitch_1
    sget v0, Lcom/afwsamples/testdpc/R$string;->delegation_scope_security_logging:I

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 65
    goto :goto_4

    .line 61
    :pswitch_2
    sget v0, Lcom/afwsamples/testdpc/R$string;->delegation_scope_network_logging:I

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 62
    goto :goto_4

    .line 58
    :pswitch_3
    sget v0, Lcom/afwsamples/testdpc/R$string;->delegation_scope_enable_system_app:I

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 59
    goto :goto_4

    .line 55
    :pswitch_4
    sget v0, Lcom/afwsamples/testdpc/R$string;->delegation_scope_package_access:I

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 56
    goto :goto_4

    .line 52
    :pswitch_5
    sget v0, Lcom/afwsamples/testdpc/R$string;->delegation_scope_permission_grant:I

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 53
    goto :goto_4

    .line 49
    :pswitch_6
    sget v0, Lcom/afwsamples/testdpc/R$string;->delegation_scope_block_uninstall:I

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 50
    goto :goto_4

    .line 46
    :pswitch_7
    sget v0, Lcom/afwsamples/testdpc/R$string;->delegation_scope_app_restrictions:I

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 47
    goto :goto_4

    .line 43
    :pswitch_8
    sget v0, Lcom/afwsamples/testdpc/R$string;->delegation_scope_cert_install:I

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 44
    nop

    .line 71
    :goto_4
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x600aee5d -> :sswitch_8
        -0x56337398 -> :sswitch_7
        -0x284c1558 -> :sswitch_6
        -0x13fb63a8 -> :sswitch_5
        0x3e38581b -> :sswitch_4
        0x5251a0fd -> :sswitch_3
        0x58c2bc10 -> :sswitch_2
        0x65834777 -> :sswitch_1
        0x686533d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
