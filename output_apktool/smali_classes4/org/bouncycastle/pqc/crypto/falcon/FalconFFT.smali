.class Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;
.super Ljava/lang/Object;
.source "FalconFFT.java"


# instance fields
.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 10
    return-void
.end method


# virtual methods
.method FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 21
    .param p1, "srcf"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "f"    # I
    .param p3, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcf",
            "f",
            "logn"
        }
    .end annotation

    .line 165
    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x1

    shl-int v3, v2, v1

    .line 166
    .local v3, "n":I
    shr-int/lit8 v4, v3, 0x1

    .line 167
    .local v4, "hn":I
    move v5, v4

    .line 168
    .local v5, "t":I
    const/4 v6, 0x1

    .local v6, "u":I
    const/4 v7, 0x2

    .local v7, "m":I
    :goto_0
    if-ge v6, v1, :cond_2

    .line 172
    shr-int/lit8 v8, v5, 0x1

    .line 173
    .local v8, "ht":I
    shr-int/lit8 v9, v7, 0x1

    .line 174
    .local v9, "hm":I
    const/4 v10, 0x0

    .local v10, "i1":I
    const/4 v11, 0x0

    .local v11, "j1":I
    :goto_1
    if-ge v10, v9, :cond_1

    .line 178
    add-int v12, v11, v8

    .line 181
    .local v12, "j2":I
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v14, v7, v10

    shl-int/2addr v14, v2

    add-int/lit8 v14, v14, 0x0

    aget-object v13, v13, v14

    .line 182
    .local v13, "s_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v15, v7, v10

    shl-int/2addr v15, v2

    add-int/2addr v15, v2

    aget-object v14, v14, v15

    .line 183
    .local v14, "s_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move v15, v11

    .local v15, "j":I
    :goto_2
    if-ge v15, v12, :cond_0

    .line 188
    add-int v16, p2, v15

    aget-object v2, p1, v16

    .line 189
    .local v2, "x_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v16, p2, v15

    add-int v16, v16, v4

    aget-object v1, p1, v16

    .line 190
    .local v1, "x_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v16, p2, v15

    add-int v16, v16, v8

    move/from16 v17, v3

    .end local v3    # "n":I
    .local v17, "n":I
    aget-object v3, p1, v16

    .line 191
    .local v3, "y_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v16, p2, v15

    add-int v16, v16, v8

    add-int v16, v16, v4

    move/from16 v18, v4

    .end local v4    # "hn":I
    .local v18, "hn":I
    aget-object v4, p1, v16

    .line 192
    .local v4, "y_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move/from16 v16, v5

    .end local v5    # "t":I
    .local v16, "t":I
    invoke-virtual {v0, v3, v4, v13, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    .line 193
    .local v5, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    iget-object v3, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 194
    iget-object v4, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 196
    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    .line 197
    add-int v19, p2, v15

    move/from16 v20, v6

    .end local v6    # "u":I
    .local v20, "u":I
    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v19

    .line 198
    add-int v6, p2, v15

    add-int v6, v6, v18

    move/from16 v19, v6

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v19

    .line 200
    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    .line 201
    add-int v6, p2, v15

    add-int/2addr v6, v8

    iget-object v0, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v0, p1, v6

    .line 202
    add-int v0, p2, v15

    add-int/2addr v0, v8

    add-int v0, v0, v18

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v0

    .line 183
    .end local v1    # "x_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v2    # "x_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "y_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "y_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v5    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v5, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v6, v20

    const/4 v2, 0x1

    goto :goto_2

    .end local v16    # "t":I
    .end local v17    # "n":I
    .end local v18    # "hn":I
    .end local v20    # "u":I
    .local v3, "n":I
    .local v4, "hn":I
    .local v5, "t":I
    .restart local v6    # "u":I
    :cond_0
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v16, v5

    move/from16 v20, v6

    .line 174
    .end local v3    # "n":I
    .end local v4    # "hn":I
    .end local v5    # "t":I
    .end local v6    # "u":I
    .end local v12    # "j2":I
    .end local v13    # "s_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v14    # "s_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v15    # "j":I
    .restart local v16    # "t":I
    .restart local v17    # "n":I
    .restart local v18    # "hn":I
    .restart local v20    # "u":I
    add-int/lit8 v10, v10, 0x1

    add-int v11, v11, v16

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 205
    .end local v16    # "t":I
    .end local v17    # "n":I
    .end local v18    # "hn":I
    .end local v20    # "u":I
    .restart local v3    # "n":I
    .restart local v4    # "hn":I
    .restart local v5    # "t":I
    .restart local v6    # "u":I
    :cond_1
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v16, v5

    move/from16 v20, v6

    .end local v3    # "n":I
    .end local v4    # "hn":I
    .end local v5    # "t":I
    .end local v6    # "u":I
    .restart local v16    # "t":I
    .restart local v17    # "n":I
    .restart local v18    # "hn":I
    .restart local v20    # "u":I
    move v5, v8

    .line 168
    .end local v8    # "ht":I
    .end local v9    # "hm":I
    .end local v10    # "i1":I
    .end local v11    # "j1":I
    .end local v16    # "t":I
    .restart local v5    # "t":I
    add-int/lit8 v6, v20, 0x1

    .end local v20    # "u":I
    .restart local v6    # "u":I
    shl-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 207
    .end local v17    # "n":I
    .end local v18    # "hn":I
    .restart local v3    # "n":I
    .restart local v4    # "hn":I
    :cond_2
    return-void
.end method

.method FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 3
    .param p1, "a_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p3, "b_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a_re",
            "a_im",
            "b_re",
            "b_im"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    .line 17
    .local v0, "fpct_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    .line 18
    .local v1, "fpct_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v2
.end method

.method FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 9
    .param p1, "a_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p3, "b_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a_re",
            "a_im",
            "b_re",
            "b_im"
        }
    .end annotation

    .line 78
    move-object v0, p1

    .line 79
    .local v0, "fpct_a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v1, p2

    .line 80
    .local v1, "fpct_a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v2, p3

    .line 81
    .local v2, "fpct_b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v3, p4

    .line 82
    .local v3, "fpct_b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 83
    .local v4, "fpct_m":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 84
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v2, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    .line 85
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 86
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 87
    invoke-virtual {v6, v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 88
    invoke-virtual {v7, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    .line 86
    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    .line 89
    .local v5, "fpct_d_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 90
    invoke-virtual {v7, v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 91
    invoke-virtual {v8, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    .line 89
    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 92
    .local v6, "fpct_d_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-instance v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v7
.end method

.method FPC_INV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 6
    .param p1, "a_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a_re",
            "a_im"
        }
    .end annotation

    .line 63
    move-object v0, p1

    .line 64
    .local v0, "fpct_a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v1, p2

    .line 65
    .local v1, "fpct_a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    .line 66
    .local v2, "fpct_m":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 68
    .local v3, "fpct_d_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 69
    .local v4, "fpct_d_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-instance v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v5
.end method

.method FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 8
    .param p1, "a_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p3, "b_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a_re",
            "a_im",
            "b_re",
            "b_im"
        }
    .end annotation

    .line 34
    move-object v0, p1

    .line 35
    .local v0, "fpct_a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v1, p2

    .line 36
    .local v1, "fpct_a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v2, p3

    .line 37
    .local v2, "fpct_b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v3, p4

    .line 38
    .local v3, "fpct_b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 39
    invoke-virtual {v5, v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 40
    invoke-virtual {v6, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 38
    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 41
    .local v4, "fpct_d_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 42
    invoke-virtual {v6, v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 43
    invoke-virtual {v7, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    .line 41
    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    .line 44
    .local v5, "fpct_d_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-instance v6, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v6
.end method

.method FPC_SQR(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 5
    .param p1, "a_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a_re",
            "a_im"
        }
    .end annotation

    .line 51
    move-object v0, p1

    .line 52
    .local v0, "fpct_a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v1, p2

    .line 53
    .local v1, "fpct_a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    .line 54
    .local v2, "fpct_d_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_double(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 55
    .local v3, "fpct_d_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v4
.end method

.method FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 3
    .param p1, "a_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p3, "b_re"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b_im"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a_re",
            "a_im",
            "b_re",
            "b_im"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    .line 25
    .local v0, "fpct_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    .line 26
    .local v1, "fpct_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v2
.end method

.method iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 21
    .param p1, "srcf"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "f"    # I
    .param p3, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcf",
            "f",
            "logn"
        }
    .end annotation

    .line 256
    move-object/from16 v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p3

    .line 257
    .local v2, "n":I
    const/4 v3, 0x1

    .line 258
    .local v3, "t":I
    move v4, v2

    .line 259
    .local v4, "m":I
    shr-int/lit8 v5, v2, 0x1

    .line 260
    .local v5, "hn":I
    move/from16 v6, p3

    .local v6, "u":I
    :goto_0
    if-le v6, v1, :cond_2

    .line 264
    shr-int/lit8 v7, v4, 0x1

    .line 265
    .local v7, "hm":I
    shl-int/lit8 v8, v3, 0x1

    .line 266
    .local v8, "dt":I
    const/4 v9, 0x0

    .local v9, "i1":I
    const/4 v10, 0x0

    .local v10, "j1":I
    :goto_1
    if-ge v10, v5, :cond_1

    .line 270
    add-int v11, v10, v3

    .line 273
    .local v11, "j2":I
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v13, v7, v9

    shl-int/2addr v13, v1

    add-int/lit8 v13, v13, 0x0

    aget-object v12, v12, v13

    .line 274
    .local v12, "s_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v15, v7, v9

    shl-int/2addr v15, v1

    add-int/2addr v15, v1

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    .line 275
    .local v13, "s_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move v14, v10

    .local v14, "j":I
    :goto_2
    if-ge v14, v11, :cond_0

    .line 280
    add-int v15, p2, v14

    aget-object v15, p1, v15

    .line 281
    .local v15, "x_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v16, p2, v14

    add-int v16, v16, v5

    aget-object v1, p1, v16

    .line 282
    .local v1, "x_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v16, p2, v14

    add-int v16, v16, v3

    move/from16 v17, v3

    .end local v3    # "t":I
    .local v17, "t":I
    aget-object v3, p1, v16

    .line 283
    .local v3, "y_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v16, p2, v14

    add-int v16, v16, v17

    add-int v16, v16, v5

    move/from16 v18, v4

    .end local v4    # "m":I
    .local v18, "m":I
    aget-object v4, p1, v16

    .line 284
    .local v4, "y_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move/from16 v16, v5

    .end local v5    # "hn":I
    .local v16, "hn":I
    invoke-virtual {v0, v15, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    .line 285
    .local v5, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    add-int v19, p2, v14

    move/from16 v20, v6

    .end local v6    # "u":I
    .local v20, "u":I
    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v19

    .line 286
    add-int v6, p2, v14

    add-int v6, v6, v16

    move/from16 v19, v6

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v19

    .line 288
    invoke-virtual {v0, v15, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    .line 289
    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 290
    .end local v15    # "x_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "x_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v1, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 292
    invoke-virtual {v0, v6, v1, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    .line 293
    add-int v15, p2, v14

    add-int v15, v15, v17

    move-object/from16 v19, v1

    .end local v1    # "x_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "x_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v1, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v1, p1, v15

    .line 294
    add-int v1, p2, v14

    add-int v1, v1, v17

    add-int v1, v1, v16

    iget-object v15, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v15, p1, v1

    .line 275
    .end local v3    # "y_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "y_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v5    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .end local v6    # "x_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v19    # "x_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v6, v20

    const/4 v1, 0x1

    goto :goto_2

    .end local v16    # "hn":I
    .end local v17    # "t":I
    .end local v18    # "m":I
    .end local v20    # "u":I
    .local v3, "t":I
    .local v4, "m":I
    .local v5, "hn":I
    .local v6, "u":I
    :cond_0
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v16, v5

    move/from16 v20, v6

    .line 266
    .end local v3    # "t":I
    .end local v4    # "m":I
    .end local v5    # "hn":I
    .end local v6    # "u":I
    .end local v11    # "j2":I
    .end local v12    # "s_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v13    # "s_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v14    # "j":I
    .restart local v16    # "hn":I
    .restart local v17    # "t":I
    .restart local v18    # "m":I
    .restart local v20    # "u":I
    add-int/lit8 v9, v9, 0x1

    add-int/2addr v10, v8

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 297
    .end local v16    # "hn":I
    .end local v17    # "t":I
    .end local v18    # "m":I
    .end local v20    # "u":I
    .restart local v3    # "t":I
    .restart local v4    # "m":I
    .restart local v5    # "hn":I
    .restart local v6    # "u":I
    :cond_1
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v16, v5

    move/from16 v20, v6

    .end local v3    # "t":I
    .end local v4    # "m":I
    .end local v5    # "hn":I
    .end local v6    # "u":I
    .restart local v16    # "hn":I
    .restart local v17    # "t":I
    .restart local v18    # "m":I
    .restart local v20    # "u":I
    move v3, v8

    .line 298
    .end local v17    # "t":I
    .restart local v3    # "t":I
    move v4, v7

    .line 260
    .end local v7    # "hm":I
    .end local v8    # "dt":I
    .end local v9    # "i1":I
    .end local v10    # "j1":I
    .end local v18    # "m":I
    .restart local v4    # "m":I
    add-int/lit8 v6, v20, -0x1

    const/4 v1, 0x1

    .end local v20    # "u":I
    .restart local v6    # "u":I
    goto/16 :goto_0

    .line 305
    .end local v16    # "hn":I
    .restart local v5    # "hn":I
    :cond_2
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v16, v5

    move/from16 v20, v6

    .end local v3    # "t":I
    .end local v4    # "m":I
    .end local v5    # "hn":I
    .end local v6    # "u":I
    .restart local v16    # "hn":I
    .restart local v17    # "t":I
    .restart local v18    # "m":I
    .restart local v20    # "u":I
    if-lez p3, :cond_3

    .line 309
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v1, v1, p3

    .line 310
    .local v1, "ni":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    const/4 v3, 0x0

    move v6, v3

    .end local v20    # "u":I
    .restart local v6    # "u":I
    :goto_3
    if-ge v6, v2, :cond_4

    .line 312
    add-int v3, p2, v6

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v5, p2, v6

    aget-object v5, p1, v5

    invoke-virtual {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p1, v3

    .line 310
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 305
    .end local v1    # "ni":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "u":I
    .restart local v20    # "u":I
    :cond_3
    move/from16 v6, v20

    .line 315
    .end local v20    # "u":I
    .restart local v6    # "u":I
    :cond_4
    return-void
.end method

.method poly_LDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 14
    .param p1, "srcg00"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "g00"    # I
    .param p3, "srcg01"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "g01"    # I
    .param p5, "srcg11"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "g11"    # I
    .param p7, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcg00",
            "g00",
            "srcg01",
            "g01",
            "srcg11",
            "g11",
            "logn"
        }
    .end annotation

    .line 570
    const/4 v0, 0x1

    shl-int v0, v0, p7

    .line 571
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .line 572
    .local v1, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 578
    add-int v3, p2, v2

    aget-object v3, p1, v3

    .line 579
    .local v3, "g00_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v4, p2, v2

    add-int/2addr v4, v1

    aget-object v4, p1, v4

    .line 580
    .local v4, "g00_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v5, p4, v2

    aget-object v5, p3, v5

    .line 581
    .local v5, "g01_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v6, p4, v2

    add-int/2addr v6, v1

    aget-object v6, p3, v6

    .line 582
    .local v6, "g01_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v7, p6, v2

    aget-object v7, p5, v7

    .line 583
    .local v7, "g11_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v8, p6, v2

    add-int/2addr v8, v1

    aget-object v8, p5, v8

    .line 584
    .local v8, "g11_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {p0, v5, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v9

    .line 585
    .local v9, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    iget-object v10, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 586
    .local v10, "mu_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v11, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 587
    .local v11, "mu_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v5, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v9

    .line 588
    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 589
    iget-object v6, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 590
    invoke-virtual {p0, v7, v8, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v9

    .line 591
    add-int v12, p6, v2

    iget-object v13, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v13, p5, v12

    .line 592
    add-int v12, p6, v2

    add-int/2addr v12, v1

    iget-object v13, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v13, p5, v12

    .line 593
    add-int v12, p4, v2

    aput-object v10, p3, v12

    .line 594
    add-int v12, p4, v2

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    aput-object v13, p3, v12

    .line 572
    .end local v3    # "g00_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "g00_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v5    # "g01_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "g01_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "g11_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v8    # "g11_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v9    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .end local v10    # "mu_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v11    # "mu_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 596
    :cond_0
    return-void
.end method

.method poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 14
    .param p1, "srcd11"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "d11"    # I
    .param p3, "srcl10"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "l10"    # I
    .param p5, "srcg00"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "g00"    # I
    .param p7, "srcg01"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p8, "g01"    # I
    .param p9, "srcg11"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p10, "g11"    # I
    .param p11, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcd11",
            "d11",
            "srcl10",
            "l10",
            "srcg00",
            "g00",
            "srcg01",
            "g01",
            "srcg11",
            "g11",
            "logn"
        }
    .end annotation

    .line 606
    const/4 v0, 0x1

    shl-int v0, v0, p11

    .line 607
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .line 608
    .local v1, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 614
    add-int v3, p6, v2

    aget-object v3, p5, v3

    .line 615
    .local v3, "g00_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v4, p6, v2

    add-int/2addr v4, v1

    aget-object v4, p5, v4

    .line 616
    .local v4, "g00_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v5, p8, v2

    aget-object v5, p7, v5

    .line 617
    .local v5, "g01_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v6, p8, v2

    add-int/2addr v6, v1

    aget-object v6, p7, v6

    .line 618
    .local v6, "g01_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v7, p10, v2

    aget-object v7, p9, v7

    .line 619
    .local v7, "g11_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v8, p10, v2

    add-int/2addr v8, v1

    aget-object v8, p9, v8

    .line 620
    .local v8, "g11_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {p0, v5, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v9

    .line 621
    .local v9, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    iget-object v10, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 622
    .local v10, "mu_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v11, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 623
    .local v11, "mu_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v5, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v9

    .line 624
    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 625
    iget-object v6, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 626
    invoke-virtual {p0, v7, v8, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v9

    .line 627
    add-int v12, p2, v2

    iget-object v13, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v13, p1, v12

    .line 628
    add-int v12, p2, v2

    add-int/2addr v12, v1

    iget-object v13, v9, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v13, p1, v12

    .line 629
    add-int v12, p4, v2

    aput-object v10, p3, v12

    .line 630
    add-int v12, p4, v2

    add-int/2addr v12, v1

    iget-object v13, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    aput-object v13, p3, v12

    .line 608
    .end local v3    # "g00_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "g00_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v5    # "g01_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "g01_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "g11_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v8    # "g11_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v9    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .end local v10    # "mu_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v11    # "mu_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

.method poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 6
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "srcb"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcb",
            "b",
            "logn"
        }
    .end annotation

    .line 323
    const/4 v0, 0x1

    shl-int/2addr v0, p5

    .line 324
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 326
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v1

    aget-object v4, p1, v4

    add-int v5, p4, v1

    aget-object v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method

.method poly_add_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 19
    .param p1, "srcd"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "d"    # I
    .param p3, "srcF"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "F"    # I
    .param p5, "srcG"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "G"    # I
    .param p7, "srcf"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p8, "f"    # I
    .param p9, "srcg"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p10, "g"    # I
    .param p11, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcd",
            "d",
            "srcF",
            "F",
            "srcG",
            "G",
            "srcf",
            "f",
            "srcg",
            "g",
            "logn"
        }
    .end annotation

    .line 501
    move-object/from16 v0, p0

    const/4 v1, 0x1

    shl-int v1, v1, p11

    .line 502
    .local v1, "n":I
    shr-int/lit8 v2, v1, 0x1

    .line 503
    .local v2, "hn":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 510
    add-int v4, p4, v3

    aget-object v4, p3, v4

    .line 511
    .local v4, "F_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v5, p4, v3

    add-int/2addr v5, v2

    aget-object v5, p3, v5

    .line 512
    .local v5, "F_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v6, p6, v3

    aget-object v6, p5, v6

    .line 513
    .local v6, "G_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v7, p6, v3

    add-int/2addr v7, v2

    aget-object v7, p5, v7

    .line 514
    .local v7, "G_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v8, p8, v3

    aget-object v8, p7, v8

    .line 515
    .local v8, "f_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v9, p8, v3

    add-int/2addr v9, v2

    aget-object v9, p7, v9

    .line 516
    .local v9, "f_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v10, p10, v3

    aget-object v10, p9, v10

    .line 517
    .local v10, "g_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v11, p10, v3

    add-int/2addr v11, v2

    aget-object v11, p9, v11

    .line 519
    .local v11, "g_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    invoke-virtual {v0, v4, v5, v8, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v12

    .line 520
    .local v12, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    iget-object v13, v12, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 521
    .local v13, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v12, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 522
    .local v14, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    invoke-virtual {v0, v6, v7, v10, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v12

    .line 523
    iget-object v15, v12, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 524
    .local v15, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move/from16 v16, v1

    .end local v1    # "n":I
    .local v16, "n":I
    iget-object v1, v12, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 525
    .local v1, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v17, p2, v3

    move/from16 v18, v2

    .end local v2    # "hn":I
    .local v18, "hn":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, v13, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v17

    .line 526
    add-int v2, p2, v3

    add-int v2, v2, v18

    move/from16 v17, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, v14, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v17

    .line 503
    .end local v1    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "F_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v5    # "F_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "G_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "G_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v8    # "f_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v9    # "f_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v10    # "g_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v11    # "g_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v12    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .end local v13    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v14    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v15    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v16

    move/from16 v2, v18

    goto :goto_0

    .line 528
    .end local v16    # "n":I
    .end local v18    # "hn":I
    .local v1, "n":I
    .restart local v2    # "hn":I
    :cond_0
    return-void
.end method

.method poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 5
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "logn"
        }
    .end annotation

    .line 360
    const/4 v0, 0x1

    shl-int/2addr v0, p3

    .line 361
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 363
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    return-void
.end method

.method poly_div_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 7
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "srcb"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcb",
            "b",
            "logn"
        }
    .end annotation

    .line 551
    const/4 v0, 0x1

    shl-int/2addr v0, p5

    .line 552
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .line 553
    .local v1, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 557
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p4, v2

    aget-object v4, p3, v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 558
    .local v3, "ib":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v4, p2, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v6, p2, v2

    aget-object v6, p1, v6

    invoke-virtual {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aput-object v5, p1, v4

    .line 559
    add-int v4, p2, v2

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v6, p2, v2

    add-int/2addr v6, v1

    aget-object v6, p1, v6

    invoke-virtual {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aput-object v5, p1, v4

    .line 553
    .end local v3    # "ib":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method

.method poly_div_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 10
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "srcb"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcb",
            "b",
            "logn"
        }
    .end annotation

    .line 454
    const/4 v0, 0x1

    shl-int/2addr v0, p5

    .line 455
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .line 456
    .local v1, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 461
    add-int v3, p2, v2

    aget-object v3, p1, v3

    .line 462
    .local v3, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v4, p2, v2

    add-int/2addr v4, v1

    aget-object v4, p1, v4

    .line 463
    .local v4, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v5, p4, v2

    aget-object v5, p3, v5

    .line 464
    .local v5, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v6, p4, v2

    add-int/2addr v6, v1

    aget-object v6, p3, v6

    .line 465
    .local v6, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v7

    .line 466
    .local v7, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    add-int v8, p2, v2

    iget-object v9, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v9, p1, v8

    .line 467
    add-int v8, p2, v2

    add-int/2addr v8, v1

    iget-object v9, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v9, p1, v8

    .line 456
    .end local v3    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v5    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 14
    .param p1, "srcd"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "d"    # I
    .param p3, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "a"    # I
    .param p5, "srcb"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "b"    # I
    .param p7, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcd",
            "d",
            "srca",
            "a",
            "srcb",
            "b",
            "logn"
        }
    .end annotation

    .line 477
    const/4 v0, 0x1

    shl-int v0, v0, p7

    .line 478
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .line 479
    .local v1, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 484
    add-int v3, p4, v2

    aget-object v3, p3, v3

    .line 485
    .local v3, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v4, p4, v2

    add-int/2addr v4, v1

    aget-object v4, p3, v4

    .line 486
    .local v4, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v5, p6, v2

    aget-object v5, p5, v5

    .line 487
    .local v5, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v6, p6, v2

    add-int/2addr v6, v1

    aget-object v6, p5, v6

    .line 488
    .local v6, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v7, p2, v2

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 489
    invoke-virtual {v11, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 490
    invoke-virtual {v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    iget-object v13, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    .line 488
    invoke-virtual {v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    aput-object v8, p1, v7

    .line 479
    .end local v3    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v5    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_0
    return-void
.end method

.method poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 13
    .param p1, "srcf"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "f"    # I
    .param p3, "srcf0"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "f0"    # I
    .param p5, "srcf1"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "f1"    # I
    .param p7, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcf",
            "f",
            "srcf0",
            "f0",
            "srcf1",
            "f1",
            "logn"
        }
    .end annotation

    .line 697
    const/4 v0, 0x1

    shl-int v1, v0, p7

    .line 698
    .local v1, "n":I
    shr-int/lit8 v2, v1, 0x1

    .line 699
    .local v2, "hn":I
    shr-int/lit8 v3, v2, 0x1

    .line 704
    .local v3, "qn":I
    add-int/lit8 v4, p2, 0x0

    add-int/lit8 v5, p4, 0x0

    aget-object v5, p3, v5

    aput-object v5, p1, v4

    .line 705
    add-int v4, p2, v2

    add-int/lit8 v5, p6, 0x0

    aget-object v5, p5, v5

    aput-object v5, p1, v4

    .line 707
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 713
    add-int v5, p4, v4

    aget-object v5, p3, v5

    .line 714
    .local v5, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v6, p4, v4

    add-int/2addr v6, v3

    aget-object v6, p3, v6

    .line 715
    .local v6, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v7, p6, v4

    aget-object v7, p5, v7

    add-int v8, p6, v4

    add-int/2addr v8, v3

    aget-object v8, p5, v8

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v10, v4, v2

    shl-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x0

    aget-object v9, v9, v10

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v11, v4, v2

    shl-int/2addr v11, v0

    add-int/2addr v11, v0

    aget-object v10, v10, v11

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v7

    .line 718
    .local v7, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    iget-object v8, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 719
    .local v8, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v9, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 720
    .local v9, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {p0, v5, v6, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v7

    .line 721
    iget-object v10, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 722
    .local v10, "t_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v11, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 723
    .local v11, "t_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    shl-int/lit8 v12, v4, 0x1

    add-int/2addr v12, p2

    add-int/lit8 v12, v12, 0x0

    aput-object v10, p1, v12

    .line 724
    shl-int/lit8 v12, v4, 0x1

    add-int/2addr v12, p2

    add-int/lit8 v12, v12, 0x0

    add-int/2addr v12, v2

    aput-object v11, p1, v12

    .line 725
    invoke-virtual {p0, v5, v6, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v7

    .line 726
    iget-object v10, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 727
    iget-object v11, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 728
    shl-int/lit8 v12, v4, 0x1

    add-int/2addr v12, p2

    add-int/2addr v12, v0

    aput-object v10, p1, v12

    .line 729
    shl-int/lit8 v12, v4, 0x1

    add-int/2addr v12, p2

    add-int/2addr v12, v0

    add-int/2addr v12, v2

    aput-object v11, p1, v12

    .line 707
    .end local v5    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .end local v8    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v9    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v10    # "t_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v11    # "t_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 731
    :cond_0
    return-void
.end method

.method poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 7
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "srcb"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcb",
            "b",
            "logn"
        }
    .end annotation

    .line 536
    const/4 v0, 0x1

    shl-int/2addr v0, p5

    .line 537
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .line 538
    .local v1, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 540
    add-int v3, p2, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v5, p2, v2

    aget-object v5, p1, v5

    add-int v6, p4, v2

    aget-object v6, p3, v6

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p1, v3

    .line 541
    add-int v3, p2, v2

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v5, p2, v2

    add-int/2addr v5, v1

    aget-object v5, p1, v5

    add-int v6, p4, v2

    aget-object v6, p3, v6

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p1, v3

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method

.method poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 10
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "srcb"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcb",
            "b",
            "logn"
        }
    .end annotation

    .line 373
    const/4 v0, 0x1

    shl-int/2addr v0, p5

    .line 374
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .line 375
    .local v1, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 380
    add-int v3, p2, v2

    aget-object v3, p1, v3

    .line 381
    .local v3, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v4, p2, v2

    add-int/2addr v4, v1

    aget-object v4, p1, v4

    .line 382
    .local v4, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v5, p4, v2

    aget-object v5, p3, v5

    .line 383
    .local v5, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v6, p4, v2

    add-int/2addr v6, v1

    aget-object v6, p3, v6

    .line 384
    .local v6, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v7

    .line 385
    .local v7, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    add-int v8, p2, v2

    iget-object v9, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v9, p1, v8

    .line 386
    add-int v8, p2, v2

    add-int/2addr v8, v1

    iget-object v9, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v9, p1, v8

    .line 375
    .end local v3    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v5    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 10
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "srcb"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcb",
            "b",
            "logn"
        }
    .end annotation

    .line 396
    const/4 v0, 0x1

    shl-int/2addr v0, p5

    .line 397
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .line 398
    .local v1, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 403
    add-int v3, p2, v2

    aget-object v3, p1, v3

    .line 404
    .local v3, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v4, p2, v2

    add-int/2addr v4, v1

    aget-object v4, p1, v4

    .line 405
    .local v4, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v5, p4, v2

    aget-object v5, p3, v5

    .line 406
    .local v5, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v7, p4, v2

    add-int/2addr v7, v1

    aget-object v7, p3, v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 407
    .local v6, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v7

    .line 408
    .local v7, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    add-int v8, p2, v2

    iget-object v9, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v9, p1, v8

    .line 409
    add-int v8, p2, v2

    add-int/2addr v8, v1

    iget-object v9, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v9, p1, v8

    .line 398
    .end local v3    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v5    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 5
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "x"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "x",
            "logn"
        }
    .end annotation

    .line 441
    const/4 v0, 0x1

    shl-int/2addr v0, p4

    .line 442
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 444
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_0
    return-void
.end method

.method poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 9
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "logn"
        }
    .end annotation

    .line 422
    const/4 v0, 0x1

    shl-int/2addr v0, p3

    .line 423
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x1

    .line 424
    .local v1, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 429
    add-int v3, p2, v2

    aget-object v3, p1, v3

    .line 430
    .local v3, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v4, p2, v2

    add-int/2addr v4, v1

    aget-object v4, p1, v4

    .line 431
    .local v4, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v5, p2, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aput-object v6, p1, v5

    .line 432
    add-int v5, p2, v2

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v5

    .line 424
    .end local v3    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 5
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "logn"
        }
    .end annotation

    .line 348
    const/4 v0, 0x1

    shl-int/2addr v0, p3

    .line 349
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 351
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method

.method poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 17
    .param p1, "srcf0"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "f0"    # I
    .param p3, "srcf1"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "f1"    # I
    .param p5, "srcf"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "f"    # I
    .param p7, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcf0",
            "f0",
            "srcf1",
            "f1",
            "srcf",
            "f",
            "logn"
        }
    .end annotation

    .line 647
    move-object/from16 v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p7

    .line 648
    .local v2, "n":I
    shr-int/lit8 v3, v2, 0x1

    .line 649
    .local v3, "hn":I
    shr-int/lit8 v4, v3, 0x1

    .line 657
    .local v4, "qn":I
    add-int/lit8 v5, p2, 0x0

    add-int/lit8 v6, p6, 0x0

    aget-object v6, p5, v6

    aput-object v6, p1, v5

    .line 658
    add-int/lit8 v5, p4, 0x0

    add-int v6, p6, v3

    aget-object v6, p5, v6

    aput-object v6, p3, v5

    .line 660
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 666
    shl-int/lit8 v6, v5, 0x1

    add-int v6, p6, v6

    add-int/lit8 v6, v6, 0x0

    aget-object v6, p5, v6

    .line 667
    .local v6, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    shl-int/lit8 v7, v5, 0x1

    add-int v7, p6, v7

    add-int/lit8 v7, v7, 0x0

    add-int/2addr v7, v3

    aget-object v7, p5, v7

    .line 668
    .local v7, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    shl-int/lit8 v8, v5, 0x1

    add-int v8, p6, v8

    add-int/2addr v8, v1

    aget-object v8, p5, v8

    .line 669
    .local v8, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    shl-int/lit8 v9, v5, 0x1

    add-int v9, p6, v9

    add-int/2addr v9, v1

    add-int/2addr v9, v3

    aget-object v9, p5, v9

    .line 671
    .local v9, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {v0, v6, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v10

    .line 672
    .local v10, "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    iget-object v11, v10, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 673
    .local v11, "t_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v12, v10, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 674
    .local v12, "t_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int v13, p2, v5

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    aput-object v14, p1, v13

    .line 675
    add-int v13, p2, v5

    add-int/2addr v13, v4

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    aput-object v14, p1, v13

    .line 677
    invoke-virtual {v0, v6, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v10

    .line 678
    iget-object v11, v10, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 679
    iget-object v12, v10, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 680
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v14, v5, v3

    shl-int/2addr v14, v1

    add-int/lit8 v14, v14, 0x0

    aget-object v13, v13, v14

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v16, v5, v3

    shl-int/lit8 v16, v16, 0x1

    add-int/lit8 v16, v16, 0x1

    aget-object v15, v15, v16

    .line 682
    invoke-virtual {v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    .line 680
    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v10

    .line 683
    iget-object v11, v10, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 684
    iget-object v12, v10, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 685
    add-int v13, p4, v5

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    aput-object v14, p3, v13

    .line 686
    add-int v13, p4, v5

    add-int/2addr v13, v4

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    aput-object v14, p3, v13

    .line 660
    .end local v6    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v8    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v9    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v10    # "res":Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .end local v11    # "t_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v12    # "t_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 688
    :cond_0
    return-void
.end method

.method poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 6
    .param p1, "srca"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "a"    # I
    .param p3, "srcb"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "b"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcb",
            "b",
            "logn"
        }
    .end annotation

    .line 336
    const/4 v0, 0x1

    shl-int/2addr v0, p5

    .line 337
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 339
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v1

    aget-object v4, p1, v4

    add-int v5, p4, v1

    aget-object v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method
