.class public Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;
.super Ljava/lang/Object;
.source "FooterBarMixinMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics$FooterButtonVisibility;
    }
.end annotation


# static fields
.field public static final EXTRA_PRIMARY_BUTTON_VISIBILITY:Ljava/lang/String; = "PrimaryButtonVisibility"

.field public static final EXTRA_SECONDARY_BUTTON_VISIBILITY:Ljava/lang/String; = "SecondaryButtonVisibility"

.field private static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field public primaryButtonVisibility:Ljava/lang/String;

.field secondaryButtonVisibility:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "FooterBarMixinMetrics"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static updateButtonVisibilityState(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "originalVisibility"    # Ljava/lang/String;
    .param p1, "isVisible"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "originalVisibility",
            "isVisible"
        }
    .end annotation

    .line 111
    const-string v0, "VisibleUsingXml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Invisible"

    const-string v3, "Visible"

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    sget-object v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal visibility state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 117
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const-string v0, "Invisible_to_Visible"

    return-object v0

    .line 119
    :cond_1
    if-nez p1, :cond_3

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "VisibleUsingXml_to_Invisible"

    return-object v0

    .line 122
    :cond_2
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const-string v0, "Visible_to_Invisible"

    return-object v0

    .line 126
    :cond_3
    return-object p0
.end method


# virtual methods
.method public getInitialStateVisibility(ZZ)Ljava/lang/String;
    .locals 1
    .param p1, "isVisible"    # Z
    .param p2, "isUsingXml"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isVisible",
            "isUsingXml"
        }
    .end annotation

    .line 73
    if-eqz p1, :cond_1

    .line 75
    if-eqz p2, :cond_0

    const-string v0, "VisibleUsingXml"

    goto :goto_0

    :cond_0
    const-string v0, "Visible"

    .local v0, "visibility":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 77
    .end local v0    # "visibility":Ljava/lang/String;
    :cond_1
    const-string v0, "Invisible"

    .line 80
    .restart local v0    # "visibility":Ljava/lang/String;
    :goto_1
    return-object v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 3

    .line 132
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 133
    .local v0, "persistableBundle":Landroid/os/PersistableBundle;
    const-string v1, "PrimaryButtonVisibility"

    iget-object v2, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "SecondaryButtonVisibility"

    iget-object v2, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-object v0
.end method

.method public logPrimaryButtonInitialStateVisibility(ZZ)V
    .locals 2
    .param p1, "isVisible"    # Z
    .param p2, "isUsingXml"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isVisible",
            "isUsingXml"
        }
    .end annotation

    .line 85
    nop

    .line 86
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->getInitialStateVisibility(ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public logSecondaryButtonInitialStateVisibility(ZZ)V
    .locals 2
    .param p1, "isVisible"    # Z
    .param p2, "isUsingXml"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isVisible",
            "isUsingXml"
        }
    .end annotation

    .line 93
    nop

    .line 94
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->getInitialStateVisibility(ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public updateButtonVisibility(ZZ)V
    .locals 1
    .param p1, "isPrimaryButtonVisible"    # Z
    .param p2, "isSecondaryButtonVisible"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isPrimaryButtonVisible",
            "isSecondaryButtonVisible"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 103
    invoke-static {v0, p1}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->updateButtonVisibilityState(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->primaryButtonVisibility:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 105
    invoke-static {v0, p2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->updateButtonVisibilityState(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->secondaryButtonVisibility:Ljava/lang/String;

    .line 106
    return-void
.end method
