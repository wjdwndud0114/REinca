.class Lcom/tnkfactory/ad/BannerAdItem;
.super Lcom/tnkfactory/ad/ImageAdItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private O:Landroid/graphics/Bitmap;

.field private P:Ljava/util/ArrayList;

.field private Q:J

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:J

.field private V:I

.field private W:Z

.field private X:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/eh;

    invoke-direct {v0}, Lcom/tnkfactory/ad/eh;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/BannerAdItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/tnkfactory/ad/BannerAdItem;->Q:J

    iput v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->R:I

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->aE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->S:Ljava/lang/String;

    const-string v0, "N"

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->T:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tnkfactory/ad/BannerAdItem;->U:J

    iput v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->V:I

    iput-boolean v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->W:Z

    iput v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->X:I

    invoke-virtual {p0, p2}, Lcom/tnkfactory/ad/BannerAdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/BannerAdItem;->l()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/tnkfactory/ad/BannerAdItem;->Q:J

    iput v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->R:I

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->aE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->S:Ljava/lang/String;

    const-string v0, "N"

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->T:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tnkfactory/ad/BannerAdItem;->U:J

    iput v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->V:I

    iput-boolean v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->W:Z

    iput v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->X:I

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/BannerAdItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tnkfactory/ad/eh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/BannerAdItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private l()V
    .locals 12

    const/4 v11, 0x1

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    int-to-float v0, v3

    div-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v2, v3

    rem-float/2addr v2, v4

    float-to-int v4, v2

    if-lez v0, :cond_5

    if-lez v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    :goto_0
    if-lt v2, v11, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    if-ne v0, v5, :cond_0

    if-lez v4, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    add-int/lit8 v8, v3, -0x64

    const/16 v9, 0x2d0

    const/16 v10, 0x64

    invoke-static {v6, v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    mul-int/lit8 v8, v0, 0x64

    const/16 v9, 0x2d0

    const/16 v10, 0x64

    invoke-static {v6, v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v11, :cond_3

    iput-boolean v11, p0, Lcom/tnkfactory/ad/BannerAdItem;->W:Z

    :cond_2
    :goto_3
    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->W:Z

    goto :goto_3

    :cond_4
    iput-boolean v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->W:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->Q:J

    return-wide v0
.end method

.method a(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    const-string v0, "bnr_img"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    const-string v0, "bnr_nsec"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->Q:J

    const-string v0, "bnr_in_eff"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->R:I

    const-string v0, "actn_desc"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "actn_desc"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->S:Ljava/lang/String;

    :cond_0
    const-string v0, "bnr_abz_yn"

    iget-object v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->T:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->T:Ljava/lang/String;

    const-string v0, "bnr_rsec"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->U:J

    const-string v0, "bnr_clck_dly"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->V:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->k:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->R:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->S:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->T:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->U:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->V:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->W:Z

    return v0
.end method

.method public h()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/tnkfactory/ad/BannerAdItem;->O:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->X:I

    iget-object v2, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tnkfactory/ad/BannerAdItem;->X:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->X:I

    iget-object v2, p0, Lcom/tnkfactory/ad/BannerAdItem;->P:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->X:I

    :cond_0
    iget-boolean v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->W:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->X:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->X:I

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public sendImpression(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iget-wide v2, p0, Lcom/tnkfactory/ad/BannerAdItem;->b:J

    iget-object v1, p0, Lcom/tnkfactory/ad/BannerAdItem;->s:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tnkfactory/ad/AdCampaignItem;

    iget v4, v1, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    iget v5, p0, Lcom/tnkfactory/ad/BannerAdItem;->K:I

    iget v6, p0, Lcom/tnkfactory/ad/BannerAdItem;->L:I

    iget-object v7, p0, Lcom/tnkfactory/ad/BannerAdItem;->M:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/tnkfactory/ad/hl;->c(Landroid/content/Context;JIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tnkfactory/ad/ImageAdItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
