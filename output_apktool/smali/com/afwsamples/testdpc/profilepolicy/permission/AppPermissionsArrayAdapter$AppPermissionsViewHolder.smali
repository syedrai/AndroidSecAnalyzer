.class final Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;
.super Ljava/lang/Object;
.source "AppPermissionsArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppPermissionsViewHolder"
.end annotation


# instance fields
.field appPermission:Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

.field permissionGroup:Landroid/widget/RadioGroup;

.field permissionName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;-><init>(Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;)V

    return-void
.end method
