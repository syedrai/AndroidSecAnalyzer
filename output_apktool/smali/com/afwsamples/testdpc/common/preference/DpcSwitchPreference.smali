.class public Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "DpcSwitchPreference.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;


# instance fields
.field private mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 45
    sget v0, Landroidx/preference/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    new-instance v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    .line 38
    return-void
.end method


# virtual methods
.method public addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .locals 1
    .param p1, "customConstraint"    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customConstraint"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 120
    return-void
.end method

.method public clearAdminConstraint()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearAdminConstraint()V

    .line 85
    return-void
.end method

.method public clearNonCustomConstraints()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearNonCustomConstraints()V

    .line 110
    return-void
.end method

.method public clearPermissionConstraint()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearPermissionConstraint()V

    .line 105
    return-void
.end method

.method public clearUserConstraint()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearUserConstraint()V

    .line 95
    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroidx/preference/PreferenceManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferenceManager"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 62
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 55
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 56
    return-void
.end method

.method public refreshEnabledState()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 125
    return-void
.end method

.method public setAdminConstraint(I)V
    .locals 1
    .param p1, "adminConstraint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adminConstraint"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setAdminConstraint(I)V

    .line 80
    return-void
.end method

.method public setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .locals 1
    .param p1, "customConstraint"    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customConstraint"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 115
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->constraintsMet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    .line 70
    return-void
.end method

.method public setMinSdkVersion(I)V
    .locals 1
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setMinSdkVersion(I)V

    .line 75
    return-void
.end method

.method public setPermissionConstraint(Ljava/lang/String;)V
    .locals 1
    .param p1, "permissionConstraints"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionConstraints"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setPermissionConstraint(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setUserConstraint(I)V
    .locals 1
    .param p1, "userConstraints"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userConstraints"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setUserConstraint(I)V

    .line 90
    return-void
.end method
