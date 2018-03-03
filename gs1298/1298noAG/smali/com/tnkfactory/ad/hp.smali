.class Lcom/tnkfactory/ad/hp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hw;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hl;


# direct methods
.method private constructor <init>(Lcom/tnkfactory/ad/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hp;->a:Lcom/tnkfactory/ad/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tnkfactory/ad/hl;Lcom/tnkfactory/ad/hm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/hp;-><init>(Lcom/tnkfactory/ad/hl;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    if-nez p2, :cond_1

    const/16 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Throwable;

    if-nez v4, :cond_0

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/16 p2, 0x0

    goto :goto_0

    :cond_3
    const-string v4, "logic_id"

    const/4 v5, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "logic_nm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "bnr_nsec"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v4, "bnr_in_eff"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v4, "actn_desc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "bnr_abz_yn"

    const-string v5, "N"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "bnr_rsec"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v4, "bnr_clck_dly"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v7}, Lcom/tnkfactory/ad/in;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "bnr_isec"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-static {v0, v7, v4, v5}, Lcom/tnkfactory/ad/ia;->b(Landroid/content/Context;Ljava/lang/String;J)V

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/tnkfactory/ad/ia;->m(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    new-instance v5, Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-direct {v5}, Lcom/tnkfactory/framework/vo/ValueObject;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tnkfactory/ad/hp;->a:Lcom/tnkfactory/ad/hl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/hl;->a(Lcom/tnkfactory/ad/hl;Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)Z

    move-result v17

    if-nez v17, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const-string v17, "img_url"

    invoke-virtual/range {v16 .. v17}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "img_dt"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    if-eqz v17, :cond_5

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/tnkfactory/ad/fs;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v17

    if-eqz v17, :cond_5

    const-string v18, "bnr_img"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v17, "logic_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v17, "logic_nm"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v17, "bnr_nsec"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v9}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;J)V

    const-string v17, "bnr_in_eff"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v17, "actn_desc"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v17, "bnr_abz_yn"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v17, "bnr_rsec"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14, v15}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;J)V

    const-string v17, "bnr_clck_dly"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->add(Lcom/tnkfactory/framework/vo/ValueObject;)V

    goto :goto_2

    :cond_7
    move-object/from16 p2, v5

    goto/16 :goto_0
.end method
