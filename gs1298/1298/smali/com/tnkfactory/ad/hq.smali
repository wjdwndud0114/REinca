.class Lcom/tnkfactory/ad/hq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hw;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hl;


# direct methods
.method private constructor <init>(Lcom/tnkfactory/ad/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hq;->a:Lcom/tnkfactory/ad/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tnkfactory/ad/hl;Lcom/tnkfactory/ad/hm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/hq;-><init>(Lcom/tnkfactory/ad/hl;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

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

    const/4 v5, 0x0

    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v4

    if-lez v4, :cond_8

    const-string v4, "frame_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v4, "scale_factor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v4, "fad_in_eff"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v4, "fad_out_eff"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v4, "fimg_dt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v4, "fimg_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "cimg_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "logic_id"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v4, "logic_nm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "fad_nsec"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v4, "clck_dly"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tnkfactory/ad/hq;->a:Lcom/tnkfactory/ad/hl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/tnkfactory/ad/hl;->a(Lcom/tnkfactory/ad/hl;Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)Z

    move-result v20

    if-nez v20, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v5

    if-lez v5, :cond_6

    const-string v5, "img_url"

    invoke-virtual {v4, v5}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "img_dt"

    invoke-virtual {v4, v6}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v5, v1, v2}, Lcom/tnkfactory/ad/fs;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, "fad_img"

    invoke-virtual {v4, v6, v5}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-eqz v11, :cond_4

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Lcom/tnkfactory/ad/fs;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, "frame_img"

    invoke-virtual {v4, v6, v5}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-eqz v14, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v14, v12, v13}, Lcom/tnkfactory/ad/fs;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, "close_img"

    invoke-virtual {v4, v6, v5}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string v5, "frame_id"

    invoke-virtual {v4, v5, v7}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v5, "scale_factor"

    invoke-virtual {v4, v5, v8}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v5, "fad_in_eff"

    invoke-virtual {v4, v5, v9}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v5, "fad_out_eff"

    invoke-virtual {v4, v5, v10}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v5, "fad_nsec"

    move-wide/from16 v0, v18

    invoke-virtual {v4, v5, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;J)V

    const-string v5, "logic_id"

    invoke-virtual {v4, v5, v15}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v5, "logic_nm"

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "clck_dly"

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    :cond_6
    :goto_3
    move-object/from16 p2, v4

    goto/16 :goto_0

    :cond_7
    move-object v4, v5

    goto :goto_2

    :cond_8
    move-object v4, v5

    goto :goto_3
.end method
