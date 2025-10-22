.class public Lorg/bouncycastle/jcajce/provider/keystore/util/ParameterUtil;
.super Ljava/lang/Object;
.source "ParameterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractPassword(Ljava/security/KeyStore$LoadStoreParameter;)[C
    .locals 8
    .param p0, "bcParam"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bcParam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-interface {p0}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v0

    .line 18
    .local v0, "protParam":Ljava/security/KeyStore$ProtectionParameter;
    if-nez v0, :cond_0

    .line 20
    const/4 v1, 0x0

    return-object v1

    .line 22
    :cond_0
    instance-of v1, v0, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_1

    .line 24
    move-object v1, v0

    check-cast v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    return-object v1

    .line 26
    :cond_1
    instance-of v1, v0, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v1, :cond_2

    .line 28
    move-object v1, v0

    check-cast v1, Ljava/security/KeyStore$CallbackHandlerProtection;

    invoke-virtual {v1}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v1

    .line 30
    .local v1, "handler":Ljavax/security/auth/callback/CallbackHandler;
    new-instance v2, Ljavax/security/auth/callback/PasswordCallback;

    const-string v3, "password: "

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 34
    .local v2, "passwordCallback":Ljavax/security/auth/callback/PasswordCallback;
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljavax/security/auth/callback/Callback;

    aput-object v2, v3, v4

    invoke-interface {v1, v3}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 36
    invoke-virtual {v2}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v3
    :try_end_0
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 38
    :catch_0
    move-exception v3

    .line 40
    .local v3, "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljavax/security/auth/callback/UnsupportedCallbackException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PasswordCallback not recognised: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 45
    .end local v1    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v2    # "passwordCallback":Ljavax/security/auth/callback/PasswordCallback;
    .end local v3    # "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no support for protection parameter of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
