.class public Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;
.super Landroid/os/AsyncTask;
.source "SignAndVerifyTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PolicyManagement"


# instance fields
.field private mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callback"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aliases"
        }
    .end annotation

    .line 34
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "aliases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aliases"
        }
    .end annotation

    .line 46
    const-string v0, "PolicyManagement"

    const/4 v1, 0x0

    aget-object v2, p1, v1

    .line 48
    .local v2, "alias":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 51
    .local v3, "privateKey":Ljava/security/PrivateKey;
    invoke-interface {v3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    const-string v4, "SHA256withRSA"

    .local v4, "algorithmIdentifier":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v4    # "algorithmIdentifier":Ljava/lang/String;
    :cond_0
    const-string v4, "SHA256withECDSA"

    .line 57
    .restart local v4    # "algorithmIdentifier":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "hello"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 58
    .local v5, "data":[B
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    .line 59
    .local v6, "signer":Ljava/security/Signature;
    invoke-virtual {v6, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 60
    invoke-virtual {v6, v5}, Ljava/security/Signature;->update([B)V

    .line 61
    invoke-virtual {v6}, Ljava/security/Signature;->sign()[B

    move-result-object v7

    .line 63
    .local v7, "signature":[B
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    aget-object v1, v8, v1

    .line 64
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    .line 65
    .local v8, "publicKey":Ljava/security/PublicKey;
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    .line 66
    .local v9, "verifier":Ljava/security/Signature;
    invoke-virtual {v9, v8}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 67
    invoke-virtual {v9, v5}, Ljava/security/Signature;->update([B)V

    .line 68
    invoke-virtual {v9, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "privateKey":Ljava/security/PrivateKey;
    .end local v4    # "algorithmIdentifier":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v6    # "signer":Ljava/security/Signature;
    .end local v7    # "signature":[B
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v9    # "verifier":Ljava/security/Signature;
    :cond_1
    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v3, "Provided alias resolves to an invalid key"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 77
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Ljava/security/SignatureException;
    const-string v3, "Failed signing with key"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/security/SignatureException;
    goto :goto_1

    .line 75
    :catch_2
    move-exception v1

    .line 76
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Algorithm not supported"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1

    .line 73
    :catch_3
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted while getting the key"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 71
    :catch_4
    move-exception v1

    .line 72
    .local v1, "e":Landroid/security/KeyChainException;
    const-string v3, "Error getting key"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v1    # "e":Landroid/security/KeyChainException;
    :goto_1
    nop

    .line 82
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    sget v2, Lcom/afwsamples/testdpc/R$string;->key_usage_successful:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    sget v2, Lcom/afwsamples/testdpc/R$string;->key_usage_failed:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;->showToast(I[Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void
.end method
