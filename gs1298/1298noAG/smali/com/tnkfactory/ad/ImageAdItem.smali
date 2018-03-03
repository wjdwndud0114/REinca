.class public Lcom/tnkfactory/ad/ImageAdItem;
.super Lcom/tnkfactory/ad/AdItem;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected J:Ljava/lang/String;

.field protected K:I

.field protected L:I

.field protected M:Ljava/lang/String;

.field protected N:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/fo;

    invoke-direct {v0}, Lcom/tnkfactory/ad/fo;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/ImageAdItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdItem;-><init>()V

    iput-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iput v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iput-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    iput v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdItem;-><init>()V

    iput-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iput v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iput-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    iput v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tnkfactory/ad/fo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/tnkfactory/ad/AdItem;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdItem;-><init>(Lcom/tnkfactory/ad/AdItem;)V

    iput-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iput v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iput-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    iput v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    instance-of v0, p1, Lcom/tnkfactory/ad/ImageAdItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tnkfactory/ad/ImageAdItem;

    iget-object v0, p1, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    iget v0, p1, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iget v0, p1, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iget-object v0, p1, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    iget v0, p1, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/AdItem;-><init>()V

    iput-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iput v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iput-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    iput v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    return-void
.end method


# virtual methods
.method a(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/AdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "img_id"

    iget v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    const-string v0, "logic_nm"

    iget-object v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    const-string v0, "logic_id"

    iget v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    const-string v0, "img_url"

    iget-object v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->x:Ljava/lang/String;

    const-string v0, "view_url"

    iget-object v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    const-string v0, "clck_dly"

    iget v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/util/Map;
    .locals 3

    invoke-super {p0}, Lcom/tnkfactory/ad/AdItem;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "img_id"

    iget v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logic_nm"

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logic_id"

    iget v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "img_url"

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->x:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "view_url"

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clck_dly"

    iget v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?img_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&sub_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&ad_form="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->z:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "&iv_yn=Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "&clck_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->i:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/AdItem;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    return-void
.end method

.method public requestJoin(Landroid/content/Context;)I
    .locals 3

    iget v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iget v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->i:Ljava/lang/String;

    invoke-super {p0, p1, v0, v1, v2}, Lcom/tnkfactory/ad/AdItem;->a(Landroid/content/Context;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestPromotionUrl(Landroid/content/Context;)I
    .locals 3

    iget v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iget v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->i:Ljava/lang/String;

    invoke-super {p0, p1, v0, v1, v2}, Lcom/tnkfactory/ad/AdItem;->b(Landroid/content/Context;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendImpression(Landroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iget v1, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    invoke-super {p0, p1, v0, v1, v2}, Lcom/tnkfactory/ad/AdItem;->c(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tnkfactory/ad/AdItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",img_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",logic_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",logic_nm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",img_ur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",clck_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",view_url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/tnkfactory/ad/AdItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tnkfactory/ad/ImageAdItem;->N:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
