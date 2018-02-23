.class Lcom/igaworks/dao/CounterDAOForCPEActivity$9$1;
.super Ljava/lang/Object;
.source "CounterDAOForCPEActivity.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CounterDAOForCPEActivity$9;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Landroid/database/Cursor;",
        "Ljava/util/List",
        "<",
        "Lcom/igaworks/model/ActivityCounter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/CounterDAOForCPEActivity$9;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CounterDAOForCPEActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/CounterDAOForCPEActivity$9;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$9$1;->this$1:Lcom/igaworks/dao/CounterDAOForCPEActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CounterDAOForCPEActivity$9$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/ActivityCounter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/database/Cursor;

    .line 299
    .local v18, "cursor":Landroid/database/Cursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v19, "result":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/ActivityCounter;>;"
    const/4 v2, 0x0

    .line 301
    .local v2, "counter":Lcom/igaworks/model/ActivityCounter;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    new-instance v2, Lcom/igaworks/model/ActivityCounter;

    .end local v2    # "counter":Lcom/igaworks/model/ActivityCounter;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x4

    .line 303
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v11, 0x8

    .line 304
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v12, 0x9

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v13, 0xa

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v14, 0xb

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v15, 0xc

    .line 305
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/igaworks/model/ActivityCounter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .restart local v2    # "counter":Lcom/igaworks/model/ActivityCounter;
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 308
    :cond_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 309
    return-object v19
.end method
