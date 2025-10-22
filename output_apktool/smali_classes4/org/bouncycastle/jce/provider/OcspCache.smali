.class Lorg/bouncycastle/jce/provider/OcspCache;
.super Ljava/lang/Object;
.source "OcspCache.java"


# static fields
.field private static final DEFAULT_MAX_RESPONSE_SIZE:I = 0x8000

.field private static final DEFAULT_TIMEOUT:I = 0x3a98

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/URI;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ocsp/CertID;",
            "Lorg/bouncycastle/asn1/ocsp/OCSPResponse;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 49
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    .line 48
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOcspResponse(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .locals 27
    .param p0, "certID"    # Lorg/bouncycastle/asn1/ocsp/CertID;
    .param p1, "parameters"    # Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p2, "ocspResponder"    # Ljava/net/URI;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p5, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certID",
            "parameters",
            "ocspResponder",
            "responderCert",
            "ocspExtensions",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ocsp/CertID;",
            "Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;",
            "Ljava/net/URI;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Lorg/bouncycastle/asn1/ocsp/OCSPResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 57
    .local p4, "ocspExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "configuration error: "

    const/4 v0, 0x0

    .line 59
    .local v0, "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    sget-object v4, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 60
    .local v4, "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    goto :goto_0

    .line 60
    :cond_0
    move-object v5, v0

    .line 65
    .end local v0    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .local v5, "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    :goto_0
    if-eqz v5, :cond_4

    .line 67
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    .line 68
    .local v0, "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    if-eqz v0, :cond_4

    .line 70
    nop

    .line 71
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 70
    invoke-static {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v6

    .line 73
    .local v6, "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v7

    .line 75
    .local v7, "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    .line 77
    .local v8, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v9, 0x0

    move v10, v9

    move-object v9, v0

    .end local v0    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .local v9, "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .local v10, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v10, v0, :cond_3

    .line 79
    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v11

    .line 81
    .local v11, "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v12

    .line 86
    .local v12, "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    if-eqz v12, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v9, 0x0

    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/text/ParseException;
    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/4 v9, 0x0

    goto :goto_3

    .line 97
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_1
    :goto_2
    nop

    .line 77
    .end local v11    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .end local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 100
    .end local v10    # "i":I
    :cond_3
    if-eqz v9, :cond_4

    .line 102
    return-object v9

    .line 110
    .end local v6    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local v7    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .end local v8    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7

    move-object v6, v0

    .line 116
    .local v6, "ocspUrl":Ljava/net/URL;
    nop

    .line 121
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v7, v0

    .line 123
    .local v7, "requests":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/Request;

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/asn1/ocsp/Request;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 125
    move-object/from16 v9, p4

    .line 126
    .local v9, "exts":Ljava/util/List;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v10, v0

    .line 128
    .local v10, "requestExtensions":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .line 129
    .local v0, "nonce":[B
    const/4 v11, 0x0

    move/from16 v26, v11

    move-object v11, v0

    move/from16 v0, v26

    .local v0, "i":I
    .local v11, "nonce":[B
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-eq v0, v12, :cond_6

    .line 131
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/Extension;

    .line 132
    .local v12, "ext":Ljava/security/cert/Extension;
    invoke-interface {v12}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v13

    .line 134
    .local v13, "value":[B
    sget-object v14, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 136
    move-object v11, v13

    .line 139
    :cond_5
    new-instance v14, Lorg/bouncycastle/asn1/x509/Extension;

    new-instance v15, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 140
    invoke-interface {v12}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v15, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/security/cert/Extension;->isCritical()Z

    move-result v8

    invoke-direct {v14, v15, v8, v13}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 139
    invoke-virtual {v10, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    .end local v12    # "ext":Ljava/security/cert/Extension;
    .end local v13    # "value":[B
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x0

    goto :goto_4

    .line 145
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 148
    invoke-static {v12}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v0, v13, v8, v12}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    move-object v8, v0

    .local v0, "tbsReq":Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    goto :goto_5

    .line 152
    .end local v0    # "tbsReq":Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    :cond_7
    const/4 v13, 0x0

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v12, v13

    check-cast v12, Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v0, v13, v8, v13}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    move-object v8, v0

    .line 155
    .local v8, "tbsReq":Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    :goto_5
    const/4 v12, 0x0

    .line 160
    .local v12, "signature":Lorg/bouncycastle/asn1/ocsp/Signature;
    :try_start_2
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {v0, v8, v12}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/bouncycastle/asn1/ocsp/TBSRequest;Lorg/bouncycastle/asn1/ocsp/Signature;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getEncoded()[B

    move-result-object v0

    .line 162
    .local v0, "request":[B
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 163
    .local v13, "ocspCon":Ljava/net/HttpURLConnection;
    const/16 v14, 0x3a98

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 164
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 165
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 166
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 167
    const-string v14, "POST"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 168
    const-string v14, "Content-type"

    const-string v15, "application/ocsp-request"

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v14, "Content-length"

    array-length v15, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 172
    .local v14, "reqOut":Ljava/io/OutputStream;
    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 173
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 175
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 176
    .local v15, "reqIn":Ljava/io/InputStream;
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v17

    .line 177
    .local v17, "contentLength":I
    if-gez v17, :cond_8

    .line 180
    const v17, 0x8000

    move-object/from16 v18, v0

    move/from16 v0, v17

    goto :goto_6

    .line 177
    :cond_8
    move-object/from16 v18, v0

    move/from16 v0, v17

    .line 182
    .end local v17    # "contentLength":I
    .local v0, "contentLength":I
    .local v18, "request":[B
    :goto_6
    invoke-static {v15, v0}, Lorg/bouncycastle/util/io/Streams;->readAllLimited(Ljava/io/InputStream;I)[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v17

    move-object/from16 v19, v17

    .line 184
    .local v19, "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getIntValue()I

    move-result v17

    if-nez v17, :cond_d

    .line 186
    const/16 v17, 0x0

    .line 187
    .local v17, "validated":Z
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v20

    .line 189
    .local v20, "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    move/from16 v21, v0

    .end local v0    # "contentLength":I
    .local v21, "contentLength":I
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponseType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v22, v4

    .end local v4    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .local v22, "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    :try_start_3
    sget-object v4, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_9

    .line 191
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 193
    .local v0, "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    move-object/from16 v4, p1

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    .end local v5    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v6    # "ocspUrl":Ljava/net/URL;
    .local v23, "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .local v24, "ocspUrl":Ljava/net/URL;
    :try_start_5
    invoke-static {v0, v4, v11, v5, v6}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->validatedOcspResponse(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;[BLjava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Z

    move-result v25

    move/from16 v17, v25

    goto :goto_7

    .line 228
    .end local v0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local v13    # "ocspCon":Ljava/net/HttpURLConnection;
    .end local v14    # "reqOut":Ljava/io/OutputStream;
    .end local v15    # "reqIn":Ljava/io/InputStream;
    .end local v17    # "validated":Z
    .end local v18    # "request":[B
    .end local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v20    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .end local v21    # "contentLength":I
    .end local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v24    # "ocspUrl":Ljava/net/URL;
    .restart local v5    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .restart local v6    # "ocspUrl":Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    goto/16 :goto_a

    .line 189
    .restart local v13    # "ocspCon":Ljava/net/HttpURLConnection;
    .restart local v14    # "reqOut":Ljava/io/OutputStream;
    .restart local v15    # "reqIn":Ljava/io/InputStream;
    .restart local v17    # "validated":Z
    .restart local v18    # "request":[B
    .restart local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v20    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .restart local v21    # "contentLength":I
    :cond_9
    move-object/from16 v4, p1

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    .line 196
    .end local v5    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v6    # "ocspUrl":Ljava/net/URL;
    .restart local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .restart local v24    # "ocspUrl":Ljava/net/URL;
    :goto_7
    if-eqz v17, :cond_c

    .line 202
    sget-object v0, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v16, v0

    .line 203
    .end local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .local v16, "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    if-eqz v16, :cond_a

    .line 205
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v4, v0

    .end local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .local v0, "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    goto :goto_8

    .line 228
    .end local v0    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v13    # "ocspCon":Ljava/net/HttpURLConnection;
    .end local v14    # "reqOut":Ljava/io/OutputStream;
    .end local v15    # "reqIn":Ljava/io/InputStream;
    .end local v17    # "validated":Z
    .end local v18    # "request":[B
    .end local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v20    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .end local v21    # "contentLength":I
    .restart local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    :catch_2
    move-exception v0

    move-object/from16 v4, v16

    move-object/from16 v5, v23

    goto/16 :goto_b

    .line 203
    .restart local v13    # "ocspCon":Ljava/net/HttpURLConnection;
    .restart local v14    # "reqOut":Ljava/io/OutputStream;
    .restart local v15    # "reqIn":Ljava/io/InputStream;
    .restart local v17    # "validated":Z
    .restart local v18    # "request":[B
    .restart local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v20    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .restart local v21    # "contentLength":I
    :cond_a
    move-object/from16 v4, v23

    .line 208
    .end local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .local v4, "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    :goto_8
    if-eqz v4, :cond_b

    .line 210
    move-object/from16 v0, v19

    .end local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .local v0, "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :try_start_7
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v0

    goto :goto_9

    .line 214
    .end local v0    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :cond_b
    move-object/from16 v0, v19

    .end local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v0    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, v19

    .line 215
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-object/from16 v19, v0

    .end local v0    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    sget-object v0, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 219
    :goto_9
    return-object v19

    .line 228
    .end local v13    # "ocspCon":Ljava/net/HttpURLConnection;
    .end local v14    # "reqOut":Ljava/io/OutputStream;
    .end local v15    # "reqIn":Ljava/io/InputStream;
    .end local v17    # "validated":Z
    .end local v18    # "request":[B
    .end local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v20    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .end local v21    # "contentLength":I
    :catch_3
    move-exception v0

    move-object v5, v4

    move-object/from16 v4, v16

    goto :goto_b

    .line 198
    .end local v4    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v16    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .restart local v13    # "ocspCon":Ljava/net/HttpURLConnection;
    .restart local v14    # "reqOut":Ljava/io/OutputStream;
    .restart local v15    # "reqIn":Ljava/io/InputStream;
    .restart local v17    # "validated":Z
    .restart local v18    # "request":[B
    .restart local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v20    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .restart local v21    # "contentLength":I
    .restart local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .restart local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    :cond_c
    :try_start_8
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "OCSP response failed to validate"

    .line 199
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v4, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v7    # "requests":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v8    # "tbsReq":Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    .end local v9    # "exts":Ljava/util/List;
    .end local v10    # "requestExtensions":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "nonce":[B
    .end local v12    # "signature":Lorg/bouncycastle/asn1/ocsp/Signature;
    .end local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .end local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v24    # "ocspUrl":Ljava/net/URL;
    .end local p0    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p2    # "ocspResponder":Ljava/net/URI;
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "ocspExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .end local p5    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v0

    .line 228
    .end local v13    # "ocspCon":Ljava/net/HttpURLConnection;
    .end local v14    # "reqOut":Ljava/io/OutputStream;
    .end local v15    # "reqIn":Ljava/io/InputStream;
    .end local v17    # "validated":Z
    .end local v18    # "request":[B
    .end local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v20    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .end local v21    # "contentLength":I
    .restart local v5    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .restart local v6    # "ocspUrl":Ljava/net/URL;
    .restart local v7    # "requests":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v8    # "tbsReq":Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    .restart local v9    # "exts":Ljava/util/List;
    .restart local v10    # "requestExtensions":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "nonce":[B
    .restart local v12    # "signature":Lorg/bouncycastle/asn1/ocsp/Signature;
    .restart local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .restart local p0    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .restart local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p2    # "ocspResponder":Ljava/net/URI;
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "ocspExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .restart local p5    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :catch_4
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v6, p5

    move-object/from16 v4, v22

    .end local v5    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v6    # "ocspUrl":Ljava/net/URL;
    .restart local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .restart local v24    # "ocspUrl":Ljava/net/URL;
    :goto_a
    goto :goto_b

    .line 223
    .end local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .end local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v24    # "ocspUrl":Ljava/net/URL;
    .local v0, "contentLength":I
    .local v4, "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .restart local v5    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .restart local v6    # "ocspUrl":Ljava/net/URL;
    .restart local v13    # "ocspCon":Ljava/net/HttpURLConnection;
    .restart local v14    # "reqOut":Ljava/io/OutputStream;
    .restart local v15    # "reqIn":Ljava/io/InputStream;
    .restart local v18    # "request":[B
    .restart local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :cond_d
    move/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v6, p5

    .end local v0    # "contentLength":I
    .end local v4    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .end local v5    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v6    # "ocspUrl":Ljava/net/URL;
    .restart local v21    # "contentLength":I
    .restart local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .restart local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .restart local v24    # "ocspUrl":Ljava/net/URL;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 224
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OCSP responder failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v2, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v7    # "requests":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v8    # "tbsReq":Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    .end local v9    # "exts":Ljava/util/List;
    .end local v10    # "requestExtensions":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "nonce":[B
    .end local v12    # "signature":Lorg/bouncycastle/asn1/ocsp/Signature;
    .end local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .end local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v24    # "ocspUrl":Ljava/net/URL;
    .end local p0    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p2    # "ocspResponder":Ljava/net/URI;
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "ocspExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .end local p5    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 228
    .end local v13    # "ocspCon":Ljava/net/HttpURLConnection;
    .end local v14    # "reqOut":Ljava/io/OutputStream;
    .end local v15    # "reqIn":Ljava/io/InputStream;
    .end local v18    # "request":[B
    .end local v19    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v21    # "contentLength":I
    .restart local v7    # "requests":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v8    # "tbsReq":Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    .restart local v9    # "exts":Ljava/util/List;
    .restart local v10    # "requestExtensions":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "nonce":[B
    .restart local v12    # "signature":Lorg/bouncycastle/asn1/ocsp/Signature;
    .restart local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .restart local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .restart local v24    # "ocspUrl":Ljava/net/URL;
    .restart local p0    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .restart local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p2    # "ocspResponder":Ljava/net/URI;
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "ocspExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .restart local p5    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :catch_5
    move-exception v0

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    goto :goto_b

    .end local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .end local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .end local v24    # "ocspUrl":Ljava/net/URL;
    .restart local v4    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .restart local v5    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .restart local v6    # "ocspUrl":Ljava/net/URL;
    :catch_6
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v6, p5

    .line 230
    .end local v6    # "ocspUrl":Ljava/net/URL;
    .local v0, "e":Ljava/io/IOException;
    .restart local v24    # "ocspUrl":Ljava/net/URL;
    :goto_b
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v13

    invoke-direct {v1, v2, v0, v3, v13}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "requests":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v8    # "tbsReq":Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    .end local v9    # "exts":Ljava/util/List;
    .end local v10    # "requestExtensions":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "nonce":[B
    .end local v12    # "signature":Lorg/bouncycastle/asn1/ocsp/Signature;
    .end local v24    # "ocspUrl":Ljava/net/URL;
    :catch_7
    move-exception v0

    move-object/from16 v6, p5

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .line 114
    .end local v4    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .end local v5    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v22    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;>;"
    .restart local v23    # "responseMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/OCSPResponse;>;"
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method
