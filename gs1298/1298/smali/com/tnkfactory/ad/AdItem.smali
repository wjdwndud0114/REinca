.class public Lcom/tnkfactory/ad/AdItem;
.super Lcom/tnkfactory/ad/fa;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/ab;

    invoke-direct {v0}, Lcom/tnkfactory/ad/ab;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/AdItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tnkfactory/ad/fa;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/fa;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/AdItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tnkfactory/ad/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/tnkfactory/ad/AdItem;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/fa;-><init>(Lcom/tnkfactory/ad/fa;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/tnkfactory/ad/fa;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/AdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->a:J

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lcom/tnkfactory/ad/AdItem;->j:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tnkfactory/ad/AdItem;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/AdItem;->i:Ljava/lang/String;

    const-string v2, "empty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/tnkfactory/ad/AdItem;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Intent;Z)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;->a()V

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while moving on click url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/tnkfactory/ad/AdItem;->j:I

    if-ne v1, v0, :cond_5

    const-string v1, "Y"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1, v3, p3}, Lcom/tnkfactory/ad/AdItem;->b(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_7

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdItem;->b:J

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdItem;->getActionType()I

    move-result v1

    if-nez v1, :cond_3

    move v4, v0

    :cond_3
    iget-object v6, p0, Lcom/tnkfactory/ad/AdItem;->q:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;JZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/tnkfactory/ad/AdItem;->b(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    const-string v0, "Y"

    iget-object v1, p0, Lcom/tnkfactory/ad/AdItem;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1, v3, p3}, Lcom/tnkfactory/ad/AdItem;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/tnkfactory/ad/AdItem;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/AdItem;->getActionText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/tnkfactory/ad/AdItem;->getCampaignItem(I)Lcom/tnkfactory/ad/AdCampaignItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/AdCampaignItem;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionType()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdItem;->getActionType(I)I

    move-result v0

    return v0
.end method

.method public getActionType(I)I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdCampaignItem;

    iget v0, v0, Lcom/tnkfactory/ad/AdCampaignItem;->d:I

    return v0
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->j:I

    return v0
.end method

.method public getAppDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->b:J

    return-wide v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeType()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->v:I

    return v0
.end method

.method public getBannerImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignCount()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCampaignItem(I)Lcom/tnkfactory/ad/AdCampaignItem;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdCampaignItem;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "app_id"

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdItem;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_nm"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "corp_desc"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os_type"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->n:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_pkg"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->q:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "updt_dt"

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdItem;->t:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "badge_tag"

    iget v2, p0, Lcom/tnkfactory/ad/AdItem;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "no_inst"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->u:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bimg_url"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->w:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fad_url"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->x:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "img_dt"

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdItem;->y:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vdo_url"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->z:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clck_url"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "free_yn"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->o:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tr_type"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->p:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ad_type"

    iget v2, p0, Lcom/tnkfactory/ad/AdItem;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "cpc_type"

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdItem;->getActionType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "weight"

    iget v2, p0, Lcom/tnkfactory/ad/AdItem;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "webview_yn"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->G:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const-string v0, "actn_id"

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdItem;->getActionType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pnt_unit"

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdItem;->getPointUnit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pnt_amt"

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdItem;->getPointAmount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "actn_desc"

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdCampaignItem;

    iget-object v0, v0, Lcom/tnkfactory/ad/AdCampaignItem;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "user_desc"

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdCampaignItem;

    iget-object v0, v0, Lcom/tnkfactory/ad/AdCampaignItem;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->H:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->H:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->L:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->N:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->H:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->O:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->M:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->P:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->R:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->C:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->C:Ljava/lang/String;

    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->G:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtraDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraValue()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->I:I

    return v0
.end method

.method public getFeatureImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUpdateMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->y:J

    return-wide v0
.end method

.method public getMarketUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdItem;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPointAmount()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/AdItem;->getPointAmount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPointAmount(I)J
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdCampaignItem;

    iget-wide v0, v0, Lcom/tnkfactory/ad/AdCampaignItem;->h:J

    return-wide v0
.end method

.method public getPointUnit()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdCampaignItem;

    iget-object v0, v0, Lcom/tnkfactory/ad/AdCampaignItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->t:J

    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->z:Ljava/lang/String;

    return-object v0
.end method

.method public gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tnkfactory/ad/AdItem;->gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z

    move-result v0

    return v0
.end method

.method public gotoMarket(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/AdItem;->c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;)Z

    move-result v0

    return v0
.end method

.method public hasJoinedForInstall(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdItem;->b:J

    invoke-static {p1, v2, v3}, Lcom/tnkfactory/ad/ia;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdItem;->getActionType()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasValidClick(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdItem;->b:J

    invoke-static {p1, v2, v3}, Lcom/tnkfactory/ad/ia;->b(Landroid/content/Context;J)J

    move-result-wide v2

    iget v1, p0, Lcom/tnkfactory/ad/AdItem;->m:I

    if-gtz v1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget v1, p0, Lcom/tnkfactory/ad/AdItem;->m:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFreeContents()Z
    .locals 2

    const-string v0, "Y"

    iget-object v1, p0, Lcom/tnkfactory/ad/AdItem;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tnkfactory/ad/AdItem;->q:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "W"

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->q:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isWebContents()Z
    .locals 2

    const-string v0, "W"

    iget-object v1, p0, Lcom/tnkfactory/ad/AdItem;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadFeaturedImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->x:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tnkfactory/ad/AdItem;->y:J

    invoke-static {p1, v0, v2, v3}, Lcom/tnkfactory/ad/fs;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdItem;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdItem;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdItem;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    new-instance v3, Lcom/tnkfactory/ad/AdCampaignItem;

    invoke-direct {v3, p1}, Lcom/tnkfactory/ad/AdCampaignItem;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->x:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->y:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->C:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->D:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->E:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->F:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItem;->G:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdItem;->H:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/AdItem;->I:I

    return-void
.end method

.method public requestInfo(Landroid/content/Context;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/tnkfactory/ad/fa;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public requestJoin(Landroid/content/Context;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/fa;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public requestPromotionUrl(Landroid/content/Context;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/fa;->e(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public requestRewardForAttend(Landroid/content/Context;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/fa;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public requestRewardForInstall(Landroid/content/Context;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/fa;->c(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public requestRewardForVideoView(Landroid/content/Context;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/fa;->d(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public setExtraValue(I)V
    .locals 0

    iput p1, p0, Lcom/tnkfactory/ad/AdItem;->I:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdCampaignItem;

    invoke-virtual {v0, p1, v2}, Lcom/tnkfactory/ad/AdCampaignItem;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->y:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->B:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItem;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/tnkfactory/ad/AdItem;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/tnkfactory/ad/AdItem;->I:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
