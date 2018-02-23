.class Lcom/tnkfactory/ad/hr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hw;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hl;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/hl;I)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/tnkfactory/ad/hr;->a:Lcom/tnkfactory/ad/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/hr;->b:I

    iput v1, p0, Lcom/tnkfactory/ad/hr;->c:I

    iput p2, p0, Lcom/tnkfactory/ad/hr;->b:I

    iput v1, p0, Lcom/tnkfactory/ad/hr;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/tnkfactory/ad/hl;II)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/hr;->a:Lcom/tnkfactory/ad/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/hr;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/hr;->c:I

    iput p2, p0, Lcom/tnkfactory/ad/hr;->b:I

    iput p3, p0, Lcom/tnkfactory/ad/hr;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    instance-of v1, p2, Ljava/lang/Throwable;

    if-nez v1, :cond_0

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object p2, v0

    goto :goto_0

    :cond_3
    const-string v0, "logic_id"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "logic_nm"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "ntv_clck_dly"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9}, Lcom/tnkfactory/ad/in;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "fad_nsec"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v9, v0, v1}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {p1, v9}, Lcom/tnkfactory/ad/ia;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    new-instance v7, Lcom/tnkfactory/framework/vo/ValueObject;

    invoke-direct {v7}, Lcom/tnkfactory/framework/vo/ValueObject;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-ge v6, v0, :cond_a

    invoke-virtual {p2, v6}, Lcom/tnkfactory/framework/vo/ValueObject;->getRowAsVo(I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v11

    iget-object v0, p0, Lcom/tnkfactory/ad/hr;->a:Lcom/tnkfactory/ad/hl;

    invoke-static {v0, p1, v11}, Lcom/tnkfactory/ad/hl;->a(Lcom/tnkfactory/ad/hl;Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/tnkfactory/ad/hr;->b:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_7

    const-string v0, "img_url"

    invoke-virtual {v11, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "img_dt"

    invoke-virtual {v11, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    if-eqz v0, :cond_5

    invoke-static {p1, v0, v2, v3}, Lcom/tnkfactory/ad/fs;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "fad_img"

    invoke-virtual {v11, v1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget v0, p0, Lcom/tnkfactory/ad/hr;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    const-string v0, "icon_url"

    invoke-virtual {v11, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "updt_dt"

    invoke-virtual {v11, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "app_id"

    invoke-virtual {v11, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    if-eqz v12, :cond_8

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3, v12}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_5

    const-string v1, "icon_img"

    invoke-virtual {v11, v1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    const-string v0, "logic_id"

    invoke-virtual {v11, v0, v8}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v0, "logic_nm"

    invoke-virtual {v11, v0, v9}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ntv_clck_dly"

    invoke-virtual {v11, v0, v10}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    invoke-virtual {v7, v11}, Lcom/tnkfactory/framework/vo/ValueObject;->add(Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-virtual {v7}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    iget v1, p0, Lcom/tnkfactory/ad/hr;->c:I

    if-lt v0, v1, :cond_5

    :cond_a
    move-object p2, v7

    goto/16 :goto_0
.end method
