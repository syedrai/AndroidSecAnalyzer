.class public interface abstract Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
.super Ljava/lang/Object;
.source "DpcPreferenceBase.java"


# virtual methods
.method public abstract addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customConstraint"
        }
    .end annotation
.end method

.method public abstract clearAdminConstraint()V
.end method

.method public abstract clearNonCustomConstraints()V
.end method

.method public abstract clearPermissionConstraint()V
.end method

.method public abstract clearUserConstraint()V
.end method

.method public abstract refreshEnabledState()V
.end method

.method public abstract setAdminConstraint(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adminConstraint"
        }
    .end annotation
.end method

.method public abstract setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customConstraint"
        }
    .end annotation
.end method

.method public abstract setMinSdkVersion(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation
.end method

.method public abstract setPermissionConstraint(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionConstraints"
        }
    .end annotation
.end method

.method public abstract setUserConstraint(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userConstraints"
        }
    .end annotation
.end method
