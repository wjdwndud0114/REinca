.class final Lcom/igaworks/dao/IgawSignatureManager$1;
.super Ljava/lang/Object;
.source "IgawSignatureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/IgawSignatureManager;->createSignature(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/igaworks/dao/IgawSignatureManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/dao/IgawSignatureManager$1;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 58
    .local v12, "root":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/igaworks/dao/IgawSignatureManager$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/dao/IgawSignatureManager;->getFD(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v15}, Lcom/igaworks/dao/IgawSignatureManager;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "fdName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/igaworks/dao/IgawSignatureManager$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/dao/IgawSignatureManager;->getFL(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v15}, Lcom/igaworks/dao/IgawSignatureManager;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, "flName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/igaworks/dao/IgawSignatureManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/dao/IgawSignatureManager$1;->val$adid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/igaworks/dao/IgawSignatureManager;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 63
    .local v13, "sig":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/igaworks/dao/IgawSignatureManager;->getPathList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 65
    .local v10, "item":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 69
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 73
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 76
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/igaworks/dao/IgawSignatureManager$1;->val$context:Landroid/content/Context;

    const-string v17, "IGAW_QA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "createSignature > already exist file : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v15, v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v4    # "dir":Ljava/io/File;
    .end local v7    # "fdName":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "flName":Ljava/lang/String;
    .end local v10    # "item":Ljava/lang/String;
    .end local v12    # "root":Ljava/lang/String;
    .end local v13    # "sig":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v5

    .line 96
    .local v5, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_1

    .line 97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/igaworks/dao/IgawSignatureManager$1;->val$context:Landroid/content/Context;

    const-string v16, "IGAW_QA"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v15 .. v19}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 100
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 80
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v7    # "fdName":Ljava/lang/String;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "flName":Ljava/lang/String;
    .restart local v10    # "item":Ljava/lang/String;
    .restart local v12    # "root":Ljava/lang/String;
    .restart local v13    # "sig":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/dao/IgawSignatureManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "IGAW_QA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "createSignature > "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/4 v15, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x3

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v15, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 82
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v6, "f":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v11, "pw":Ljava/io/PrintWriter;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 86
    .local v14, "sigNP":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v15, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    .end local v14    # "sigNP":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    .line 91
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    .line 92
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
