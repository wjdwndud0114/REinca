.class public Lcom/igaworks/dao/IgawSignatureManager;
.super Ljava/lang/Object;
.source "IgawSignatureManager.java"


# static fields
.field private static final AKEY:Ljava/lang/String; = "build.sign="

.field private static final PKG1:Ljava/lang/String; = "com.androVM.vmconfig"

.field private static final PKG2:Ljava/lang/String; = "me.onemobile.android"

.field private static final PKG3:Ljava/lang/String; = "com.android.noxpush"

.field private static final SIG1:Ljava/lang/String; = "/Android/data/"

.field private static final SIG2:Ljava/lang/String; = "/System/data/"

.field private static final SIG3:Ljava/lang/String; = "/data/build/"

.field public static final SIGN_CHECK:I = 0x1

.field public static final SIGN_PACKAGE:I = 0x2

.field private static final SKEY:Ljava/lang/String; = "build.serial="

.field private static final VKEY:Ljava/lang/String; = "build.version="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/igaworks/dao/IgawSignatureManager;->getFD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/igaworks/dao/IgawSignatureManager;->getFL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkSignAndPackage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adid"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "result":I
    invoke-static {p0, p1}, Lcom/igaworks/dao/IgawSignatureManager;->checkSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    or-int/lit8 v0, v0, 0x1

    .line 116
    :cond_0
    const-string v1, "com.androVM.vmconfig"

    invoke-static {p0, v1}, Lcom/igaworks/cpe/ConditionChecker;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "me.onemobile.android"

    invoke-static {p0, v1}, Lcom/igaworks/cpe/ConditionChecker;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.noxpush"

    invoke-static {p0, v1}, Lcom/igaworks/cpe/ConditionChecker;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    :cond_1
    or-int/lit8 v0, v0, 0x2

    .line 120
    :cond_2
    return v0
.end method

.method public static checkSignature(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v1

    .line 127
    .local v1, "did":Lcom/igaworks/core/DeviceIDManger;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 129
    .local v0, "adInfo":Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    if-nez v0, :cond_0

    .line 130
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/igaworks/dao/IgawSignatureManager;->checkSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 132
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/igaworks/dao/IgawSignatureManager;->checkSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static checkSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adid"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static/range {p0 .. p0}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 140
    const/16 v17, 0x1

    .line 228
    :cond_0
    :goto_0
    return v17

    .line 144
    :cond_1
    const/16 v17, 0x1

    .line 145
    .local v17, "result":Z
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/igaworks/dao/IgawSignatureManager;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 146
    .local v7, "calResult":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 147
    .local v18, "root":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/igaworks/dao/IgawSignatureManager;->getFD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "fdName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/igaworks/dao/IgawSignatureManager;->getFL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 151
    .local v11, "flName":Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/dao/IgawSignatureManager;->getPathList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 153
    .local v13, "item":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v15, "myFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 158
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v9, "fIn":Ljava/io/FileInputStream;
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    .local v16, "myReader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 164
    .local v5, "aDataRow":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 166
    const/4 v14, 0x0

    .line 169
    .local v14, "key":Ljava/lang/String;
    const-string v19, "build.serial="

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 170
    const-string v14, "build.serial="

    .line 178
    :cond_3
    :goto_2
    if-nez v14, :cond_7

    .line 179
    const-string v19, "IGAW_QA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "not valid sig > myFile.exists() is true but not valid key : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x3

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 180
    const/16 v17, 0x0

    .line 214
    .end local v14    # "key":Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 215
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 226
    .end local v5    # "aDataRow":Ljava/lang/String;
    .end local v7    # "calResult":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "fIn":Ljava/io/FileInputStream;
    .end local v10    # "fdName":Ljava/lang/String;
    .end local v11    # "flName":Ljava/lang/String;
    .end local v13    # "item":Ljava/lang/String;
    .end local v15    # "myFile":Ljava/io/File;
    .end local v16    # "myReader":Ljava/io/BufferedReader;
    .end local v18    # "root":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 227
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 171
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "aDataRow":Ljava/lang/String;
    .restart local v7    # "calResult":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9    # "fIn":Ljava/io/FileInputStream;
    .restart local v10    # "fdName":Ljava/lang/String;
    .restart local v11    # "flName":Ljava/lang/String;
    .restart local v13    # "item":Ljava/lang/String;
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "myFile":Ljava/io/File;
    .restart local v16    # "myReader":Ljava/io/BufferedReader;
    .restart local v18    # "root":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v19, "build.version="

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 172
    const-string v14, "build.version="

    goto :goto_2

    .line 173
    :cond_6
    const-string v19, "build.sign="

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 174
    const-string v14, "build.sign="

    goto :goto_2

    .line 185
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_8
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    .local v12, "i":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 190
    .local v6, "cVal":Ljava/lang/String;
    :try_start_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 194
    :goto_5
    :try_start_3
    const-string v19, "build.sign="

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    const-string v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    if-eqz v6, :cond_9

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 195
    :cond_9
    const-string v19, "IGAW_QA"

    const-string v22, "cannot find sign value."

    const/16 v23, 0x3

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_4

    .line 200
    :cond_a
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 201
    const-string v21, "IGAW_QA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "not valid sig > myFile.exists() is true but key/value : nvp.getName() = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, ", nvp.getValue() = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, ", stored = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x3

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 203
    const/16 v17, 0x0

    .line 209
    .end local v6    # "cVal":Ljava/lang/String;
    .end local v12    # "i":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    if-nez v17, :cond_2

    goto/16 :goto_3

    .line 218
    .end local v5    # "aDataRow":Ljava/lang/String;
    .end local v9    # "fIn":Ljava/io/FileInputStream;
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "myReader":Ljava/io/BufferedReader;
    :cond_c
    const-string v19, "IGAW_QA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "myFile.exists() is false : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x3

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 219
    invoke-static/range {p0 .. p1}, Lcom/igaworks/dao/IgawSignatureManager;->createSignature(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 191
    .restart local v5    # "aDataRow":Ljava/lang/String;
    .restart local v6    # "cVal":Ljava/lang/String;
    .restart local v9    # "fIn":Ljava/io/FileInputStream;
    .restart local v12    # "i":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v16    # "myReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v19

    goto/16 :goto_5
.end method

.method public static createSignature(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adid"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/dao/IgawSignatureManager$1;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/IgawSignatureManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static getFD(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    invoke-static {p0}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v0

    .line 245
    .local v0, "rp":Lcom/igaworks/core/RequestParameter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/core/DeviceIDManger;->getMd5Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getFL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-static {p0}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v0

    .line 251
    .local v0, "rp":Lcom/igaworks/core/RequestParameter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getHashkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/core/DeviceIDManger;->getMd5Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPathList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "/Android/data/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v1, "/System/data/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v1, "/data/build/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-object v0
.end method

.method public static getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    .line 259
    .local v0, "dim":Lcom/igaworks/core/DeviceIDManger;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "build.serial="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/igaworks/core/DeviceIDManger;->getMd5Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "serial":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "build.version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v7}, Lcom/igaworks/core/DeviceIDManger;->getMd5Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "version":Ljava/lang/String;
    new-instance v6, Landroid/util/Pair;

    const-string v7, "build.serial="

    invoke-direct {v6, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v6, Landroid/util/Pair;

    const-string v7, "build.version="

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "build.sign="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/igaworks/core/DeviceIDManger;->getMd5Value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "sign":Ljava/lang/String;
    new-instance v6, Landroid/util/Pair;

    const-string v7, "build.sign="

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v4    # "sign":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 271
    const-string v6, "IGAW_QA"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {p0, v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public static getStoredSgn(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-static/range {p0 .. p0}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 319
    const/4 v15, 0x0

    .line 363
    :cond_0
    :goto_0
    return-object v15

    .line 322
    :cond_1
    :try_start_0
    const-string v17, "IGAW_QA"

    const-string v18, "getStoredSgn called. "

    const/16 v19, 0x3

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 324
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 325
    .local v16, "root":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/igaworks/dao/IgawSignatureManager;->getFD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "fdName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/igaworks/dao/IgawSignatureManager;->getFL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 328
    .local v10, "flName":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/igaworks/dao/IgawSignatureManager;->getPathList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 331
    .local v11, "item":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v13, "myFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 334
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 335
    .local v8, "fIn":Ljava/io/FileInputStream;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 337
    .local v14, "myReader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 339
    .local v5, "aDataRow":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 341
    const/4 v12, 0x0

    .line 343
    .local v12, "key":Ljava/lang/String;
    const-string v18, "build.sign="

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 344
    const-string v12, "build.sign="
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    const/4 v6, 0x0

    .line 347
    .local v6, "cVal":Ljava/lang/String;
    :try_start_1
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v5, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 348
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 349
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 351
    :catch_0
    move-exception v18

    goto :goto_2

    .line 355
    .end local v6    # "cVal":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 356
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 360
    .end local v5    # "aDataRow":Ljava/lang/String;
    .end local v8    # "fIn":Ljava/io/FileInputStream;
    .end local v9    # "fdName":Ljava/lang/String;
    .end local v10    # "flName":Ljava/lang/String;
    .end local v11    # "item":Ljava/lang/String;
    .end local v13    # "myFile":Ljava/io/File;
    .end local v14    # "myReader":Ljava/io/BufferedReader;
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "root":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 361
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public static resetSgn(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    invoke-static {p0}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 313
    :goto_0
    return-void

    .line 283
    :cond_0
    :try_start_0
    const-string v7, "IGAW_QA"

    const-string v8, "resetSgn called. "

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-static {p0, v7, v8, v9, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 285
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, "root":Ljava/lang/String;
    invoke-static {p0}, Lcom/igaworks/dao/IgawSignatureManager;->getFD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "fdName":Ljava/lang/String;
    invoke-static {p0}, Lcom/igaworks/dao/IgawSignatureManager;->getFL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "flName":Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/dao/IgawSignatureManager;->getPathList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 292
    .local v4, "item":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v5, "myFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 296
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 309
    .end local v2    # "fdName":Ljava/lang/String;
    .end local v3    # "flName":Ljava/lang/String;
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "myFile":Ljava/io/File;
    .end local v6    # "root":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 300
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fdName":Ljava/lang/String;
    .restart local v3    # "flName":Ljava/lang/String;
    .restart local v6    # "root":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    .line 301
    .local v0, "did":Lcom/igaworks/core/DeviceIDManger;
    new-instance v7, Lcom/igaworks/dao/IgawSignatureManager$2;

    invoke-direct {v7, p0}, Lcom/igaworks/dao/IgawSignatureManager$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v7}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
