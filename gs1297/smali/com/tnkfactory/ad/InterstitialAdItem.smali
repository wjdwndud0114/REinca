.class public Lcom/tnkfactory/ad/InterstitialAdItem;
.super Lcom/tnkfactory/ad/ImageAdItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected O:I

.field protected P:I

.field protected Q:J

.field protected R:I

.field protected S:I

.field protected T:Landroid/graphics/Bitmap;

.field protected U:Landroid/graphics/Bitmap;

.field protected V:Landroid/graphics/Bitmap;

.field protected W:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/fp;

    invoke-direct {v0}, Lcom/tnkfactory/ad/fp;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/InterstitialAdItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->V:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->k:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->V:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/InterstitialAdItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tnkfactory/ad/fp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/InterstitialAdItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/tnkfactory/ad/AdItem;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;-><init>(Lcom/tnkfactory/ad/AdItem;)V

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->V:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    instance-of v0, p1, Lcom/tnkfactory/ad/InterstitialAdItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tnkfactory/ad/InterstitialAdItem;

    iget v0, p1, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    iget v0, p1, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    iget-wide v0, p1, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    iput-wide v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    iget v0, p1, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    iget v0, p1, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    iget-object v0, p1, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    iput v3, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->V:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/InterstitialAdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    return-void
.end method


# virtual methods
.method a(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "fad_img"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->T:Landroid/graphics/Bitmap;

    const-string v0, "frame_id"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    const-string v0, "scale_factor"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    const-string v0, "fad_in_eff"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    const-string v0, "fad_out_eff"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    const-string v0, "fad_nsec"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    const-string v0, "frame_img"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->U:Landroid/graphics/Bitmap;

    const-string v0, "close_img"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->V:Landroid/graphics/Bitmap;

    const-string v0, "vdo_rect"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->k:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/tnkfactory/ad/ImageAdItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->O:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->P:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->Q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->R:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->S:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/InterstitialAdItem;->W:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
