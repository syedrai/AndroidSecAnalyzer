.class Lorg/bouncycastle/est/HttpAuth$1;
.super Ljava/lang/Object;
.source "HttpAuth.java"

# interfaces
.implements Lorg/bouncycastle/est/ESTHijacker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/HttpAuth;->applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/HttpAuth;


# direct methods
.method constructor <init>(Lorg/bouncycastle/est/HttpAuth;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/est/HttpAuth;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hijack(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)Lorg/bouncycastle/est/ESTResponse;
    .locals 10
    .param p1, "req"    # Lorg/bouncycastle/est/ESTRequest;
    .param p2, "sock"    # Lorg/bouncycastle/est/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "req",
            "sock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Lorg/bouncycastle/est/ESTResponse;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/est/ESTResponse;-><init>(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V

    .line 118
    .local v0, "res":Lorg/bouncycastle/est/ESTResponse;
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_7

    .line 120
    const-string v1, "WWW-Authenticate"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "authHeader":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 126
    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string v4, "digest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1, v0}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$mdoDigestFunction(Lorg/bouncycastle/est/HttpAuth;Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    goto/16 :goto_1

    .line 132
    :cond_0
    const-string v4, "basic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 134
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 139
    const-string v4, "Basic"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/est/HttpUtil;->splitCSL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 144
    .local v4, "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetrealm(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 146
    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetrealm(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "realm"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetrealm(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Supplied realm \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\' does not match server realm \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v6, v2, v6}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    .line 156
    :cond_2
    :goto_0
    new-instance v2, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-direct {v2, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v2

    .line 158
    .local v2, "answer":Lorg/bouncycastle/est/ESTRequestBuilder;
    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetrealm(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetrealm(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 160
    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetrealm(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Basic realm=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 162
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetusername(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 167
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetusername(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetpassword(Lorg/bouncycastle/est/HttpAuth;)[C

    move-result-object v5

    array-length v5, v5

    add-int/2addr v1, v5

    new-array v1, v1, [C

    .line 168
    .local v1, "userPass":[C
    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetusername(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v6}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetusername(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetusername(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3a

    aput-char v6, v1, v5

    .line 170
    iget-object v5, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v5}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetpassword(Lorg/bouncycastle/est/HttpAuth;)[C

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v6}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetusername(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v8, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v8}, Lorg/bouncycastle/est/HttpAuth;->-$$Nest$fgetpassword(Lorg/bouncycastle/est/HttpAuth;)[C

    move-result-object v8

    array-length v8, v8

    invoke-static {v5, v7, v1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray([C)[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Basic "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Authorization"

    invoke-virtual {v2, v6, v5}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 175
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    .line 177
    invoke-static {v1, v7}, Lorg/bouncycastle/util/Arrays;->fill([CC)V

    .line 178
    .end local v1    # "userPass":[C
    .end local v2    # "answer":Lorg/bouncycastle/est/ESTRequestBuilder;
    .end local v4    # "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 185
    :goto_1
    return-object v0

    .line 164
    .restart local v2    # "answer":Lorg/bouncycastle/est/ESTRequestBuilder;
    .restart local v4    # "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "User must not contain a \':\'"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v2    # "answer":Lorg/bouncycastle/est/ESTRequestBuilder;
    .end local v4    # "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown auth mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_6
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    const-string v2, "Status of 401 but no WWW-Authenticate header"

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    .end local v3    # "authHeader":Ljava/lang/String;
    :cond_7
    return-object v0
.end method
