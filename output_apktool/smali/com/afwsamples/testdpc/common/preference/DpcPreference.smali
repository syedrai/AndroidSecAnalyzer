.class public Lcom/afwsamples/testdpc/common/preference/DpcPreference;
.super Landroidx/preference/Preference;
.source "DpcPreference.java"

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

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
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

    .line 44
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
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

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
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

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    new-instance v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    .line 37
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

    .line 118
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 119
    return-void
.end method

.method public clearAdminConstraint()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearAdminConstraint()V

    .line 84
    return-void
.end method

.method public clearNonCustomConstraints()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearNonCustomConstraints()V

    .line 109
    return-void
.end method

.method public clearPermissionConstraint()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearPermissionConstraint()V

    .line 104
    return-void
.end method

.method public clearUserConstraint()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearUserConstraint()V

    .line 94
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

    .line 59
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 61
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

    .line 53
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 54
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 55
    return-void
.end method

.method public refreshEnabledState()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 124
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

    .line 78
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setAdminConstraint(I)V

    .line 79
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

    .line 113
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 114
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

    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->constraintsMet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 69
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

    .line 73
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setMinSdkVersion(I)V

    .line 74
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

    .line 98
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setPermissionConstraint(Ljava/lang/String;)V

    .line 99
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

    .line 88
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setUserConstraint(I)V

    .line 89
    return-void
.end method
