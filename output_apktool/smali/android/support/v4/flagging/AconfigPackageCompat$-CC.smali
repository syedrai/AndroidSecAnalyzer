.class public final synthetic Landroid/support/v4/flagging/AconfigPackageCompat$-CC;
.super Ljava/lang/Object;
.source "AconfigPackageCompat.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/support/v4/flagging/AconfigPackageCompat;->Companion:Landroid/support/v4/flagging/AconfigPackageCompat$Companion;

    return-void
.end method

.method public static load(Ljava/lang/String;)Landroid/support/v4/flagging/AconfigPackageCompat;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/flagging/AconfigStorageReadException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroid/support/v4/flagging/AconfigPackageCompat;->Companion:Landroid/support/v4/flagging/AconfigPackageCompat$Companion;

    invoke-virtual {v0, p0}, Landroid/support/v4/flagging/AconfigPackageCompat$Companion;->load(Ljava/lang/String;)Landroid/support/v4/flagging/AconfigPackageCompat;

    move-result-object v0

    .line 87
    return-object v0
.end method
