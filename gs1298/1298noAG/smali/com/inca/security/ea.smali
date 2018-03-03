.class public Lcom/inca/security/ea;
.super Lcom/inca/security/fa;
.source "za"


# static fields
.field public static final synthetic IiIiIiiIii:I = 0x400


# instance fields
.field private synthetic IIIIiiIiII:[B

.field private synthetic IIIiiiiIII:Landroid/content/Context;

.field private synthetic IIiIiIIIii:Lcom/inca/security/wg;

.field private synthetic IiIiIIIiIi:I

.field private synthetic IiiIiiiIiI:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;ILjava/lang/String;Ljava/lang/String;IILcom/inca/security/uc;)V
    .locals 11
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/Interface/BaseEventInvoker;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;
    .param p6, "arg5"    # I
    .param p7, "arg6"    # I
    .param p8, "arg7"    # Lcom/inca/security/uc;

    .prologue
    .line 166
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/inca/security/fa;-><init>(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;ILjava/lang/String;Ljava/lang/String;Lcom/inca/security/uc;)V

    .line 120
    iput v10, p0, Lcom/inca/security/ea;->IiIiIIIiIi:I

    .line 180
    iput-object v9, p0, Lcom/inca/security/ea;->IIIIiiIiII:[B

    .line 195
    iput-object v9, p0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    .line 146
    iput-boolean v8, p0, Lcom/inca/security/ea;->IiiIiiiIiI:Z

    .line 168
    iput-object p1, p0, Lcom/inca/security/ea;->IIIiiiiIII:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    .line 61
    move/from16 v0, p6

    iput v0, p0, Lcom/inca/security/ea;->IiiiiIiiIi:I

    .line 112
    move/from16 v0, p7

    iput v0, p0, Lcom/inca/security/ea;->IIiiIiIIii:I

    .line 115
    new-instance v1, Lcom/inca/security/wg;

    iget-object v2, p0, Lcom/inca/security/ea;->IiIiIiiIii:Landroid/content/Context;

    iget-object v3, p0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    invoke-direct {v1, v2, v3}, Lcom/inca/security/wg;-><init>(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;)V

    iput-object v1, p0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    .line 141
    return-void
.end method

.method private synthetic IIiIIiIiIi()I
    .locals 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v6, 0x1

    .line 201
    const/4 v5, 0x1

    const/16 v16, 0x0

    .line 28
    const/4 v10, -0x1

    .line 143
    const/4 v15, 0x0

    .line 200
    const-string v7, "\u000e"

    invoke-static {v7}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 184
    const/4 v9, 0x0

    .line 79
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v8, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-interface {v7, v8, v11, v12}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/ea;->iIiIIiIIIi()Z

    move-result v7

    if-nez v7, :cond_1

    .line 9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v5, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v7, 0x1

    const/4 v8, 0x6

    const/4 v11, 0x0

    invoke-interface {v5, v7, v8, v11}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 76
    :cond_0
    const/4 v5, 0x0

    .line 24
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/ea;->iIiIIiIIIi()Ljava/lang/String;

    move-result-object v12

    .line 147
    const-string v7, ""

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->IIiIIIIIii:Ljava/lang/Exception;

    if-eqz v5, :cond_2

    .line 83
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 14
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 41
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/ea;->IIiIIIIIii:Ljava/lang/Exception;

    invoke-virtual {v8, v7}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v11, 0x1

    const/4 v14, 0x4

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-interface {v8, v11, v14, v5}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 17
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 89
    :cond_2
    const/4 v7, 0x0

    .line 73
    :goto_0
    const/4 v8, 0x0

    .line 116
    const/4 v5, -0x1

    .line 4
    if-eqz v7, :cond_24

    .line 3
    new-instance v11, Lcom/inca/security/pb;

    invoke-direct {v11, v12}, Lcom/inca/security/pb;-><init>(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    const/4 v10, 0x0

    invoke-virtual {v8, v11, v10}, Lcom/inca/security/wg;->IiiiIIIIii(Lcom/inca/security/pb;Z)I

    move-result v14

    .line 101
    if-eqz v14, :cond_6

    .line 27
    const/4 v8, 0x0

    .line 2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    invoke-virtual {v7}, Lcom/inca/security/wg;->IiiiIIIIii()Ljava/lang/Exception;

    move-result-object v7

    .line 42
    if-eqz v7, :cond_23

    .line 80
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 18
    :goto_1
    const/16 v10, 0x64

    if-le v14, v10, :cond_22

    .line 150
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    invoke-virtual {v10, v11}, Lcom/inca/security/wg;->iIiIIiIIIi(Lcom/inca/security/pb;)V

    move v10, v8

    move-object v8, v7

    move v7, v9

    move v9, v14

    move-object/from16 v24, v11

    move v11, v6

    move-object/from16 v6, v24

    :goto_2
    move v14, v7

    move/from16 v17, v9

    move/from16 v18, v16

    move/from16 v19, v10

    move v12, v11

    move v7, v5

    move-object/from16 v16, v8

    move-object v5, v6

    .line 448
    :goto_3
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/ea;->IIIIiiIiII:[B

    if-nez v6, :cond_1e

    .line 333
    :cond_3
    const/16 v6, 0x64

    move/from16 v0, v17

    if-le v0, v6, :cond_17

    if-eqz v5, :cond_17

    .line 456
    const/4 v6, 0x1

    move-object/from16 v4, p0

    .line 490
    .end local p0    # "this":Lcom/inca/security/ea;
    .local v4, "this":Lcom/inca/security/ea;
    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    invoke-virtual {v8}, Lcom/inca/security/wg;->IiIiiIiiII()[B

    move-result-object v8

    iput-object v8, v4, Lcom/inca/security/ea;->IIIIiiIiII:[B

    move v13, v6

    move-object v6, v5

    .line 468
    .end local v4    # "this":Lcom/inca/security/ea;
    .restart local p0    # "this":Lcom/inca/security/ea;
    :goto_5
    const-wide/16 v10, -0x1

    .line 442
    const-wide/16 v8, -0x1

    .line 225
    if-eqz v6, :cond_19

    .line 236
    if-nez v19, :cond_1d

    const/4 v5, 0x1

    .line 341
    :goto_6
    invoke-virtual {v6}, Lcom/inca/security/pb;->iIiIIiIIIi()J

    move-result-wide v8

    .line 345
    invoke-virtual {v6}, Lcom/inca/security/pb;->IiiiIIIIii()J

    move-result-wide v6

    .line 298
    :goto_7
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 397
    const-string v5, "|\u0003"

    invoke-static {v5}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    invoke-virtual {v5}, Lcom/inca/security/wg;->IiiiIIIIii()Z

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 395
    const-string v5, "-\u0014"

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 210
    const-string v5, "|\u0003"

    invoke-static {v5}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 374
    const-string v5, "-\u0014"

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 247
    const-string v5, "|\u0003"

    invoke-static {v5}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 301
    const-string v5, "-\u0014"

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 235
    const-string v5, "|\u0003"

    invoke-static {v5}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    if-eqz v19, :cond_1b

    .line 209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 412
    if-eqz v18, :cond_5

    .line 398
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/ea;->IiiIiiiIiI:Ljava/lang/String;

    const-string v7, "update.dat"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 208
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 244
    :cond_4
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/ea;->IiiIiiiIiI:Ljava/lang/String;

    const-string v8, "update.dat.new"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 259
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    invoke-virtual {v5}, Lcom/inca/security/wg;->IiiiIIIIii()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 471
    new-instance v5, Lcom/inca/security/ya;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/inca/security/ya;-><init>(Lcom/inca/security/ea;)V

    .line 273
    invoke-virtual {v5}, Lcom/inca/security/ya;->start()V

    .line 317
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/inca/security/ea;->IiiIiiiIiI:Z

    :goto_8
    return v12

    .line 51
    :cond_6
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    invoke-virtual {v5, v11}, Lcom/inca/security/wg;->iIiIIiIIIi(Lcom/inca/security/pb;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    invoke-virtual {v5}, Lcom/inca/security/wg;->IiIiiIiiII()[B

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/ea;->IIIIiiIiII:[B

    .line 77
    invoke-virtual {v11}, Lcom/inca/security/pb;->IiIiiIiiII()Ljava/util/ArrayList;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v6

    .end local p0    # "this":Lcom/inca/security/ea;
    :goto_9
    move v6, v5

    move-object v5, v9

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inca/security/ab;

    .line 129
    move-object/from16 v0, p0

    iget v8, v0, Lcom/inca/security/ea;->IiIIIiIIIi:I

    invoke-static {v5, v8}, Lcom/inca/security/jb;->IiiiIIIIii(Lcom/inca/security/ab;I)Lcom/inca/security/ga;

    move-result-object v17

    .line 122
    invoke-virtual/range {v17 .. v17}, Lcom/inca/security/ga;->IiiiIIIIii()Z

    move-result v8

    if-nez v8, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v5, :cond_20

    .line 140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v8, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v5, v8, v8, v0}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    move-object v5, v9

    goto :goto_a

    .line 57
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/inca/security/ea;->IiiiIIIIii(Lcom/inca/security/ga;Lcom/inca/security/ab;)I

    move-result v8

    .line 75
    if-gez v8, :cond_8

    .line 90
    const/4 v7, 0x0

    move-object v5, v9

    move v6, v8

    .line 74
    goto :goto_a

    .line 84
    :cond_8
    const/4 v5, 0x1

    if-ne v5, v8, :cond_9

    .line 154
    const/4 v7, 0x1

    move-object v5, v11

    move/from16 v17, v14

    move/from16 v18, v16

    move/from16 v19, v7

    move-object/from16 v16, v13

    move v14, v12

    move v12, v8

    move/from16 v24, v10

    move v10, v7

    move/from16 v7, v24

    .line 169
    goto/16 :goto_3

    .line 43
    :cond_9
    if-nez v8, :cond_16

    .line 203
    const-string v5, "$P/\u0011e\u0011r\u00111\u000cek$\u00045P"

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/inca/security/ea;->IiiiiIiiIi:I

    move/from16 v19, v0

    .line 149
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/inca/security/ea;->IIiiIiIIii:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x2

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v19, v6, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/ea;->iiIiIIIiiI:Lcom/inca/security/sa;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/inca/security/sa;->IiiiIIIIii()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/ea;->iiIiIIIiiI:Lcom/inca/security/sa;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/inca/security/sa;->iIiIIiIIIi()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v18

    .line 203
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 118
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->iiIiIIIiiI:Lcom/inca/security/sa;

    invoke-virtual {v5}, Lcom/inca/security/sa;->IiiiIIIIii()Ljava/util/ArrayList;

    move-result-object v19

    .line 315
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v20, v0

    .line 382
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 265
    if-nez v5, :cond_a

    .line 368
    if-eqz v17, :cond_1f

    .line 228
    invoke-virtual/range {v17 .. v17}, Lcom/inca/security/ga;->IiiiIIIIii()V

    move-object v5, v9

    move v6, v8

    .line 248
    goto/16 :goto_a

    .line 231
    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/ea;->IiiiIIIIii()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 388
    new-instance v6, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/ea;->IiiIiiiIiI:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "update.dat"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    new-instance v21, Lcom/inca/security/sa;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lcom/inca/security/sa;-><init>(Ljava/io/File;)V

    .line 391
    invoke-virtual/range {v21 .. v21}, Lcom/inca/security/sa;->IiiiIIIIii()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 483
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move v6, v5

    :cond_b
    :goto_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inca/security/ha;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/ea;->iiIiIIIiiI:Lcom/inca/security/sa;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/ea;->IiiIiiiIiI:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lcom/inca/security/sa;->IiiiIIIIii(Lcom/inca/security/ha;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 232
    add-int/lit8 v6, v6, -0x1

    .line 300
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/inca/security/ha;->IiiiIIIIii(Z)V

    goto :goto_b

    :cond_c
    move v5, v6

    .line 296
    :cond_d
    if-nez v5, :cond_e

    .line 404
    const/4 v7, 0x1

    .line 253
    const/4 v5, 0x1

    move-object/from16 v16, v13

    move/from16 v17, v14

    move/from16 v18, v5

    move/from16 v19, v7

    move-object v5, v11

    move v14, v12

    move v12, v8

    move/from16 v24, v10

    move v10, v7

    move/from16 v7, v24

    .line 457
    goto/16 :goto_3

    .line 302
    :cond_e
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v6, 0x0

    const/16 v21, 0x7

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v5, v6, v0, v1}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 476
    new-instance v20, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/ea;->IiiIiiiIiI:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/ea;->iiIiIIIiiI:Lcom/inca/security/sa;

    invoke-virtual {v6}, Lcom/inca/security/sa;->IiiiIIIIii()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f

    .line 407
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_f

    move-object v5, v11

    move/from16 v17, v14

    move/from16 v18, v16

    move/from16 v19, v7

    move-object/from16 v16, v13

    move v14, v12

    move v12, v8

    move/from16 v24, v10

    move v10, v7

    move/from16 v7, v24

    .line 328
    goto/16 :goto_3

    .line 299
    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 264
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    move-object v5, v6

    .line 484
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 417
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inca/security/ha;

    .line 294
    invoke-virtual {v5}, Lcom/inca/security/ha;->IiiiIIIIii()Z

    move-result v19

    if-nez v19, :cond_11

    move-object v5, v6

    .line 251
    goto :goto_c

    .line 390
    :cond_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/inca/security/ea;->IiiiIIIIii(Lcom/inca/security/ga;Lcom/inca/security/ha;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 343
    const/4 v5, 0x0

    move-object/from16 v4, p0

    .line 217
    .restart local v4    # "this":Lcom/inca/security/ea;
    :goto_d
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Lcom/inca/security/ea;->IiiiIIIIii(Ljava/io/File;)Z

    .line 414
    if-eqz v5, :cond_15

    .line 409
    const/4 v6, 0x1

    move v7, v10

    move-object/from16 v16, v13

    move/from16 v17, v14

    move/from16 v18, v6

    move/from16 v19, v5

    move v14, v12

    move v10, v5

    move-object v5, v11

    move v12, v8

    .line 376
    goto/16 :goto_3

    .line 438
    .end local v4    # "this":Lcom/inca/security/ea;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/ea;->iiIiIIIiiI:Lcom/inca/security/sa;

    move-object/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/inca/security/sa;->IiiiIIIIii(Lcom/inca/security/ha;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 386
    const/4 v5, 0x0

    move-object/from16 v4, p0

    .line 339
    .restart local v4    # "this":Lcom/inca/security/ea;
    goto :goto_d

    .line 336
    .end local v4    # "this":Lcom/inca/security/ea;
    :cond_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/inca/security/ea;->IiiiIIIIii(Lcom/inca/security/ha;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 213
    const/4 v5, 0x0

    move-object/from16 v4, p0

    .line 365
    .restart local v4    # "this":Lcom/inca/security/ea;
    goto/16 :goto_d

    .end local v4    # "this":Lcom/inca/security/ea;
    :cond_14
    move-object/from16 v4, p0

    .restart local v4    # "this":Lcom/inca/security/ea;
    move v5, v7

    .line 217
    goto/16 :goto_d

    :cond_15
    move v7, v5

    .line 329
    .end local v4    # "this":Lcom/inca/security/ea;
    :cond_16
    if-eqz v17, :cond_1f

    .line 481
    invoke-virtual/range {v17 .. v17}, Lcom/inca/security/ga;->IiiiIIIIii()V

    move v5, v8

    .line 422
    goto/16 :goto_9

    .line 284
    .restart local p0    # "this":Lcom/inca/security/ea;
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    invoke-virtual {v5}, Lcom/inca/security/wg;->IiiiIIIIii()Lcom/inca/security/pb;

    move-result-object v5

    .line 327
    if-nez v5, :cond_18

    .line 263
    const/4 v6, 0x2

    move-object/from16 v4, p0

    .end local p0    # "this":Lcom/inca/security/ea;
    .restart local v4    # "this":Lcom/inca/security/ea;
    goto/16 :goto_4

    .line 394
    .end local v4    # "this":Lcom/inca/security/ea;
    .restart local p0    # "this":Lcom/inca/security/ea;
    :cond_18
    const/4 v6, 0x3

    .line 338
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/ea;->IIiIiIIIii:Lcom/inca/security/wg;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Lcom/inca/security/wg;->IiiiIIIIii(Lcom/inca/security/pb;Z)I

    move-object/from16 v4, p0

    .end local p0    # "this":Lcom/inca/security/ea;
    .restart local v4    # "this":Lcom/inca/security/ea;
    goto/16 :goto_4

    .line 337
    .end local v4    # "this":Lcom/inca/security/ea;
    .restart local p0    # "this":Lcom/inca/security/ea;
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ea;->IIIIiiIiII:[B

    if-eqz v5, :cond_1a

    .line 305
    const/4 v5, 0x2

    .line 491
    const/16 v6, 0x10

    new-array v6, v6, [B

    .line 326
    new-instance v10, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/ea;->IIIIiiIiII:[B

    invoke-direct {v10, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 466
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v10, v6, v7, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 346
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v10, v6, v7, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 295
    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-virtual {v10, v6, v7, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 451
    invoke-static {v6}, Lcom/inca/security/va;->iIiIIiIIIi([B)J

    move-result-wide v8

    .line 313
    const/4 v7, 0x0

    const/4 v11, 0x4

    invoke-virtual {v10, v6, v7, v11}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 276
    const/4 v7, 0x0

    const/16 v11, 0x8

    invoke-virtual {v10, v6, v7, v11}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 492
    const/4 v7, 0x0

    const/4 v11, 0x4

    invoke-virtual {v10, v6, v7, v11}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 246
    const/4 v7, 0x0

    const/16 v11, 0x8

    invoke-virtual {v10, v6, v7, v11}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 283
    invoke-static {v6}, Lcom/inca/security/va;->iIiIIiIIIi([B)J

    move-result-wide v6

    .line 366
    :try_start_0
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 250
    :catch_0
    move-exception v10

    goto/16 :goto_7

    .line 354
    :cond_1a
    const/4 v5, 0x4

    move-wide v6, v8

    move-wide v8, v10

    goto/16 :goto_7

    .line 268
    :cond_1b
    const/4 v5, -0x1

    .line 255
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/ea;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    :goto_e
    move v12, v5

    .line 219
    goto/16 :goto_8

    :cond_1c
    move v5, v12

    goto :goto_e

    :cond_1d
    move v5, v7

    goto/16 :goto_6

    :cond_1e
    move-object v6, v5

    move v13, v15

    goto/16 :goto_5

    .end local p0    # "this":Lcom/inca/security/ea;
    :cond_1f
    move v5, v8

    goto/16 :goto_9

    :cond_20
    move v5, v6

    goto/16 :goto_9

    :cond_21
    move v5, v10

    move-object v8, v13

    move v9, v14

    move v10, v7

    move v7, v12

    move-object/from16 v24, v11

    move v11, v6

    move-object/from16 v6, v24

    goto/16 :goto_2

    .restart local p0    # "this":Lcom/inca/security/ea;
    :cond_22
    move v10, v8

    move-object v8, v7

    move v7, v9

    move v9, v14

    move-object/from16 v24, v11

    move v11, v6

    move-object/from16 v6, v24

    goto/16 :goto_2

    :cond_23
    move-object v7, v13

    goto/16 :goto_1

    :cond_24
    move v11, v6

    move-object v6, v8

    move-object v8, v13

    move/from16 v24, v10

    move v10, v7

    move v7, v9

    move/from16 v9, v24

    goto/16 :goto_2

    :cond_25
    move v7, v5

    goto/16 :goto_0
.end method

.method public static final synthetic IiiiIIIIii(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    .locals 9
    .param p0, "arg0"    # Ljava/io/InputStream;
    .param p1, "arg1"    # Ljava/io/OutputStream;
    .param p2, "arg2"    # I
    .param p3, "arg3"    # J
    .param p5, "arg4"    # Lorg/apache/commons/net/io/CopyStreamListener;
    .param p6, "arg5"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .prologue
    .line 1427
    const-wide/16 v2, 0x0

    .line 1209
    if-ltz p2, :cond_2

    .end local p2    # "arg2":I
    :goto_0
    new-array v8, p2, [B

    .end local p0    # "arg0":Ljava/io/InputStream;
    :cond_0
    :goto_1
    move-object v7, p0

    .line 1309
    .local v7, "arg0":Ljava/io/InputStream;
    :goto_2
    :try_start_0
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_1

    .line 1030
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1447
    :cond_1
    return-wide v2

    .line 1209
    .end local v7    # "arg0":Ljava/io/InputStream;
    .restart local p0    # "arg0":Ljava/io/InputStream;
    .restart local p2    # "arg2":I
    :cond_2
    const/16 p2, 0x400

    goto :goto_0

    .line 1274
    .end local p0    # "arg0":Ljava/io/InputStream;
    .end local p2    # "arg2":I
    .restart local v7    # "arg0":Ljava/io/InputStream;
    :cond_3
    if-nez v4, :cond_5

    .line 964
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1065
    if-ltz v1, :cond_1

    .line 1271
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 763
    if-eqz p6, :cond_4

    .line 851
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 590
    :cond_4
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 514
    if-eqz p5, :cond_0

    .line 1002
    const/4 v4, 0x1

    move-object v1, p5

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V

    move-object v7, p0

    goto :goto_2

    .line 1304
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p1, v8, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1085
    if-eqz p6, :cond_6

    .line 1166
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 635
    :cond_6
    int-to-long v5, v4

    add-long/2addr v2, v5

    .line 768
    if-eqz p5, :cond_0

    move-object v1, p5

    move-wide v5, p3

    .line 1502
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1159
    :catch_0
    move-exception v1

    .line 553
    new-instance v4, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v5, "}NqyWdDu]nZ!W`Af\\u\u0014v\\hXd\u0014b[qMhZf\u001a"

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3, v1}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v4
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/ea;)Landroid/content/Context;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/ea;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inca/security/ea;->IIIiiiiIII:Landroid/content/Context;

    return-object v0
.end method

.method private synthetic IiiiIIIIii(Lcom/inca/security/ga;Lcom/inca/security/ha;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "arg0"    # Lcom/inca/security/ga;
    .param p2, "arg1"    # Lcom/inca/security/ha;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 435
    iget-object v0, p0, Lcom/inca/security/ea;->iiIiIIIiiI:Lcom/inca/security/sa;

    invoke-virtual {v0}, Lcom/inca/security/sa;->IIiIIiIiIi()J

    move-result-wide v4

    .line 415
    if-nez p2, :cond_0

    move v0, v8

    .line 478
    :goto_0
    return v0

    .line 256
    :cond_0
    iget-object v0, p2, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    const-string v1, "k"

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 469
    const-string v1, ""

    .line 241
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 396
    iget-object v1, p2, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_1
    const/4 v3, 0x0

    .line 413
    new-instance v6, Lcom/inca/security/ra;

    invoke-direct {v6, p0}, Lcom/inca/security/ra;-><init>(Lcom/inca/security/ea;)V

    .line 444
    iget-object v1, p2, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Lcom/inca/security/ga;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 470
    if-nez v1, :cond_2

    move v0, v8

    .line 356
    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p2, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    goto :goto_1

    .line 405
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v7, v10, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/net/io/CopyStreamException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    long-to-int v3, v4

    const/4 v7, 0x1

    :try_start_1
    invoke-static/range {v1 .. v7}, Lcom/inca/security/ea;->IiiiIIIIii(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    .line 332
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/apache/commons/net/io/CopyStreamException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    if-eqz v1, :cond_3

    .line 446
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 486
    :cond_3
    if-eqz v2, :cond_4

    .line 211
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move v0, v9

    .line 419
    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    move v0, v8

    .line 269
    goto :goto_0

    .line 340
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 289
    :goto_2
    if-eqz v1, :cond_5

    .line 446
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 486
    :cond_5
    if-eqz v2, :cond_6

    .line 211
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    move v0, v8

    .line 443
    goto :goto_0

    .line 237
    :catch_2
    move-exception v0

    move v0, v8

    .line 269
    goto :goto_0

    .line 424
    :catch_3
    move-exception v0

    .line 289
    :goto_3
    if-eqz v1, :cond_7

    .line 446
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 486
    :cond_7
    if-eqz v3, :cond_8

    .line 211
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_8
    move v0, v8

    .line 478
    goto :goto_0

    .line 237
    :catch_4
    move-exception v0

    move v0, v8

    .line 269
    goto :goto_0

    .line 362
    :catch_5
    move-exception v0

    .line 289
    :goto_4
    if-eqz v1, :cond_9

    .line 446
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 486
    :cond_9
    if-eqz v3, :cond_a

    .line 211
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_a
    move v0, v8

    .line 426
    goto/16 :goto_0

    .line 237
    :catch_6
    move-exception v0

    move v0, v8

    .line 269
    goto/16 :goto_0

    .line 440
    :catchall_0
    move-exception v0

    .line 289
    :goto_5
    if-eqz v1, :cond_b

    .line 446
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 486
    :cond_b
    if-eqz v3, :cond_c

    .line 211
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 269
    :cond_c
    throw v0

    .line 237
    :catch_7
    move-exception v0

    move v0, v8

    .line 269
    goto/16 :goto_0

    .line 440
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 362
    :catch_8
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 424
    :catch_9
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 340
    :catch_a
    move-exception v0

    goto :goto_2
.end method

.method private synthetic IiiiIIIIii(Lcom/inca/security/ha;Ljava/lang/String;)Z
    .locals 13
    .param p1, "arg0"    # Lcom/inca/security/ha;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 174
    .line 139
    iget-object v0, p1, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    const-string v1, "|"

    invoke-static {v1}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 199
    const-string v1, ""

    .line 159
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 50
    iget-object v1, p1, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/inca/security/ea;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 183
    :cond_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 163
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 92
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 6
    const-wide/16 v2, 0x0

    .line 178
    :goto_1
    cmp-long v9, v2, v4

    if-gez v9, :cond_2

    .line 68
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide v10

    add-long/2addr v2, v10

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p1, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_2
    if-eqz v1, :cond_3

    .line 13
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 59
    :cond_3
    if-eqz v6, :cond_4

    .line 167
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 192
    :cond_4
    if-eqz v0, :cond_5

    .line 60
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 109
    :cond_5
    if-eqz v8, :cond_6

    .line 10
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    :cond_6
    const/4 v0, 0x1

    .line 173
    :goto_2
    return v0

    .line 47
    :catch_0
    move-exception v0

    move v0, v7

    .line 173
    goto :goto_2

    .line 108
    :catch_1
    move-exception v0

    move-object v1, v6

    move-object v0, v6

    move-object v2, v6

    .line 103
    :goto_3
    if-eqz v1, :cond_7

    .line 13
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 59
    :cond_7
    if-eqz v6, :cond_8

    .line 167
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 192
    :cond_8
    if-eqz v0, :cond_9

    .line 60
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 109
    :cond_9
    if-eqz v2, :cond_a

    .line 10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_a
    move v0, v7

    .line 125
    goto :goto_2

    .line 47
    :catch_2
    move-exception v0

    move v0, v7

    .line 173
    goto :goto_2

    .line 202
    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    move-object v8, v6

    .line 103
    :goto_4
    if-eqz v1, :cond_b

    .line 13
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 59
    :cond_b
    if-eqz v6, :cond_c

    .line 167
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 192
    :cond_c
    if-eqz v2, :cond_d

    .line 60
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 109
    :cond_d
    if-eqz v8, :cond_e

    .line 10
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 173
    :cond_e
    throw v0

    .line 47
    :catch_3
    move-exception v0

    move v0, v7

    .line 173
    goto :goto_2

    .line 202
    :catchall_1
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_4

    .line 108
    :catch_4
    move-exception v0

    move-object v1, v6

    move-object v0, v6

    move-object v2, v8

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v1, v6

    move-object v2, v8

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v2, v8

    goto :goto_3
.end method

.method private synthetic IiiiIIIIii(Ljava/io/File;)Z
    .locals 5
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    :goto_0
    return v0

    .line 453
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 425
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v0, v2, v1

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    invoke-direct {p0, v0}, Lcom/inca/security/ea;->IiiiIIIIii(Ljava/io/File;)Z

    .line 425
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 464
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 223
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public synthetic IIiIIiIiIi()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/inca/security/ea;->IiiIiiiIiI:Z

    return v0
.end method

.method public synthetic IiiiIIIIii()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/inca/security/ea;->IiIiIIIiIi:I

    return v0
.end method

.method public synthetic IiiiIIIIii()[B
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/inca/security/ea;->IIIIiiIiII:[B

    return-object v0
.end method

.method public synthetic run()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/inca/security/ea;->IIiIIiIiIi()I

    move-result v0

    iput v0, p0, Lcom/inca/security/ea;->IiIiIIIiIi:I

    .line 40
    return-void
.end method
