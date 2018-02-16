.class Lcom/tnkfactory/ad/ht;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hw;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hl;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ht;->a:Lcom/tnkfactory/ad/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x1

    aput v3, v2, v4

    return-object v2

    :cond_1
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/Throwable;

    if-nez v2, :cond_0

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    const-string v2, "app_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(ILjava/lang/String;)J

    move-result-wide v8

    const-string v2, "app_nm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "app_pkg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "actn_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/tnkfactory/ad/ia;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tnkfactory/ad/ht;->a:Lcom/tnkfactory/ad/hl;

    sget-object v11, Lcom/tnkfactory/ad/fd;->m:Ljava/lang/String;

    invoke-static {v11}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/tnkfactory/ad/fd;->B:Ljava/lang/String;

    invoke-static {v12}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tnkfactory/ad/ht;->a:Lcom/tnkfactory/ad/hl;

    iget-object v15, v15, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/tnkfactory/ad/hz;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v2, v11, v12, v13}, Lcom/tnkfactory/ad/hl;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tnkfactory/framework/vo/ValueObject;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v11

    if-lez v11, :cond_3

    const-string v11, "ret_cd"

    invoke-virtual {v2, v11}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v11, "__tnk_install_"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v11, v10}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    if-lez v5, :cond_2

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "pay_pnt"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v2

    :cond_3
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v3, v4

    move v4, v5

    goto/16 :goto_0
.end method
