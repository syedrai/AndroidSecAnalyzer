.class public Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;
.super Landroid/os/Handler;
.source "AppRestrictionsProxyHandler.java"


# static fields
.field private static final APPLICATION_RESTRICTIONS_MANAGING_PACKAGE_KEY:Ljava/lang/String; = "application_restrictions_managing_package"

.field private static final APPLICATION_RESTRICTIONS_MANAGING_PACKAGE_SIGNATURES_KEY:Ljava/lang/String; = "application_restrictions_managing_package_signatures"

.field public static final KEY_APPLICATION_RESTRICTIONS:Ljava/lang/String; = "applicationRestrictions"

.field public static final KEY_CAN_SET_APPLICATION_RESTRICTIONS:Ljava/lang/String; = "canSetApplicationRestrictions"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final MSG_CAN_SET_APPLICATION_RESTRICTIONS:I = 0x2

.field private static final MSG_GET_APPLICATION_RESTRICTIONS:I = 0x3

.field private static final MSG_SET_APPLICATION_RESTRICTIONS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppRestrictionsProxy"


# instance fields
.field private final mAdmin:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "admin"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mAdmin:Landroid/content/ComponentName;

    .line 65
    return-void
.end method

.method private getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 194
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    .line 198
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 199
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 195
    .end local v0    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getApplicationRestrictionsManagingPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 176
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    const-string v1, "application_restrictions_managing_package"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method private isCallerAuthorized(I)Z
    .locals 14
    .param p1, "callerUid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callerUid"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->getApplicationRestrictionsManagingPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "appRestrictionsManagingPackage":Ljava/lang/String;
    const-string v1, "AppRestrictionsProxy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 213
    const-string v3, "There is no app restrictions managing package"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v2

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 217
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "callingPackageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 219
    const-string v5, "Caller is not app restrictions managing package"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v2

    .line 223
    :cond_1
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    .line 224
    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 225
    const-string v6, "application_restrictions_managing_package_signatures"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 226
    .local v5, "storedSignatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_8

    .line 232
    nop

    .line 233
    const/16 v6, 0x40

    :try_start_0
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v7, "."

    if-eqz v6, :cond_7

    .line 238
    :try_start_1
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    .local v8, "callingPackageSignatures":[Landroid/content/pm/Signature;
    if-eqz v8, :cond_6

    .line 245
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 246
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v6, "expectedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 248
    .local v9, "signatureString":Ljava/lang/String;
    new-instance v10, Landroid/content/pm/Signature;

    invoke-direct {v10, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v9    # "signatureString":Ljava/lang/String;
    goto :goto_0

    .line 250
    :cond_2
    array-length v7, v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_5

    aget-object v10, v8, v9

    .line 251
    .local v10, "callingSignature":Landroid/content/pm/Signature;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/Signature;

    .line 252
    .local v12, "expectedSignature":Landroid/content/pm/Signature;
    invoke-virtual {v12, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 253
    const/4 v1, 0x1

    return v1

    .line 255
    .end local v12    # "expectedSignature":Landroid/content/pm/Signature;
    :cond_3
    goto :goto_2

    .line 250
    .end local v10    # "callingSignature":Landroid/content/pm/Signature;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 257
    :cond_5
    const-string v7, "Calling package signature doesn\'t match"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v2

    .line 240
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package info did not contain signatures for package "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "appRestrictionsManagingPackage":Ljava/lang/String;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "callingPackageName":Ljava/lang/String;
    .end local v5    # "storedSignatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "callerUid":I
    throw v1

    .line 235
    .end local v8    # "callingPackageSignatures":[Landroid/content/pm/Signature;
    .restart local v0    # "appRestrictionsManagingPackage":Ljava/lang/String;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4    # "callingPackageName":Ljava/lang/String;
    .restart local v5    # "storedSignatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p1    # "callerUid":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package info could not be retrieved for package "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "appRestrictionsManagingPackage":Ljava/lang/String;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "callingPackageName":Ljava/lang/String;
    .end local v5    # "storedSignatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "callerUid":I
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v0    # "appRestrictionsManagingPackage":Ljava/lang/String;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4    # "callingPackageName":Ljava/lang/String;
    .restart local v5    # "storedSignatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p1    # "callerUid":I
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 227
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "App restrictions managing package signatures have not been stored."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appRestrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "appRestrictions"
        }
    .end annotation

    .line 181
    if-eqz p1, :cond_1

    .line 184
    if-eqz p2, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting application restrictions for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppRestrictionsProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    .line 189
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 190
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 191
    return-void

    .line 185
    .end local v0    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "applicationRestrictions bundle cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setApplicationRestrictionsManagingPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .line 129
    const-string v0, "application_restrictions_managing_package"

    const-string v1, "application_restrictions_managing_package_signatures"

    if-nez p1, :cond_0

    .line 130
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 131
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 132
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void

    .line 139
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 140
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 141
    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v4, "."

    if-eqz v3, :cond_3

    .line 146
    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .local v5, "signatures":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_2

    .line 158
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 159
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v2, "signatureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v5, v4

    .line 161
    .local v6, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v6    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 165
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 166
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 167
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    return-void

    .line 148
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package info did not contain signatures for package "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v0

    .line 143
    .end local v5    # "signatures":[Landroid/content/pm/Signature;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package info could not be retrieved for package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as application restriction managing package as it is not installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AppRestrictionsProxy"

    const-string v2, "applicationRestrictions"

    const-string v3, "packageName"

    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown \'what\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->sendingUid:I

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->isCallerAuthorized(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 101
    .local v3, "appRestrictions":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v4, "responseBundle":Landroid/os/Bundle;
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 104
    .local v2, "response":Landroid/os/Message;
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 106
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v5

    .line 108
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Unable to respond to getApplicationRestrictions."

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v5    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 82
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "response":Landroid/os/Message;
    .end local v3    # "appRestrictions":Landroid/os/Bundle;
    .end local v4    # "responseBundle":Landroid/os/Bundle;
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "responseBundle":Landroid/os/Bundle;
    iget v2, p1, Landroid/os/Message;->sendingUid:I

    .line 84
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->isCallerAuthorized(I)Z

    move-result v2

    .line 83
    const-string v3, "canSetApplicationRestrictions"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 86
    .restart local v2    # "response":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 88
    :try_start_1
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    goto :goto_0

    .line 89
    :catch_1
    move-exception v3

    .line 90
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Unable to respond to canSetApplicationRestrictions."

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 72
    .end local v0    # "responseBundle":Landroid/os/Bundle;
    .end local v2    # "response":Landroid/os/Message;
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->sendingUid:I

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->isCallerAuthorized(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, "appRestrictions":Landroid/os/Bundle;
    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    nop

    .line 115
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "appRestrictions":Landroid/os/Bundle;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
