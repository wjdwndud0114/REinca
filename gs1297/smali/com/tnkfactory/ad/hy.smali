.class Lcom/tnkfactory/ad/hy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hw;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hl;


# direct methods
.method private constructor <init>(Lcom/tnkfactory/ad/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hy;->a:Lcom/tnkfactory/ad/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tnkfactory/ad/hl;Lcom/tnkfactory/ad/hm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/hy;-><init>(Lcom/tnkfactory/ad/hl;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/4 v6, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    move-object v6, p2

    goto :goto_0

    :cond_2
    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "logic_id"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "logic_nm"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "vdo_nsec"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v0, "vdo_wifi"

    const-string v1, "N"

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v1

    const-string v2, "vdo_url"

    invoke-virtual {v1, v2}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/in;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/tnkfactory/ad/hy;->a:Lcom/tnkfactory/ad/hl;

    invoke-static {v2, p1, v1}, Lcom/tnkfactory/ad/hl;->a(Lcom/tnkfactory/ad/hl;Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p2, v1

    :goto_2
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "img_url"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "img_dt"

    invoke-virtual {p2, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    if-eqz v0, :cond_5

    invoke-static {p1, v0, v2, v3}, Lcom/tnkfactory/ad/fs;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    :cond_5
    const-string v0, "app_id"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "updt_dt"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "icon_url"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    if-eqz v12, :cond_a

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3, v12}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    :cond_6
    :goto_3
    const-string v0, "vdo_url"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vdo_size"

    invoke-virtual {p2, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "vdm_url"

    invoke-virtual {p2, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "vdm_size"

    invoke-virtual {p2, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    if-eqz v0, :cond_8

    const-string v12, "N"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {p1, v0, v2, v3}, Lcom/tnkfactory/ad/jb;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    const-string v1, "vdo_url"

    invoke-virtual {p2, v1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const-string v0, "vdo_nsec"

    invoke-virtual {p2, v0, v10, v11}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;J)V

    const-string v0, "logic_id"

    invoke-virtual {p2, v0, v7}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v0, "logic_nm"

    invoke-virtual {p2, v0, v8}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vdo_wifi"

    invoke-virtual {p2, v0, v9}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    move-object v6, p2

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_b
    const-string v12, "Y"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-static {p1}, Lcom/tnkfactory/ad/in;->n(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {p1, v0, v2, v3}, Lcom/tnkfactory/ad/jb;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    invoke-static {p1, v0}, Lcom/tnkfactory/ad/jb;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    invoke-static {p1, v1}, Lcom/tnkfactory/ad/jb;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_d
    const-string v12, "M"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {p1}, Lcom/tnkfactory/ad/in;->n(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {p1, v0, v2, v3}, Lcom/tnkfactory/ad/jb;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_e
    if-eqz v1, :cond_10

    invoke-static {p1, v1, v4, v5}, Lcom/tnkfactory/ad/jb;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_f
    const-string v2, "L"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/jb;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    invoke-static {p1, v1, v4, v5}, Lcom/tnkfactory/ad/jb;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_10
    move-object v0, v6

    goto :goto_4

    :cond_11
    move-object p2, v6

    goto/16 :goto_2
.end method
