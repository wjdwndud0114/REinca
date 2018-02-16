.class public Lcom/tnkfactory/ad/VideoAdItem;
.super Lcom/tnkfactory/ad/ImageAdItem;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected O:J

.field protected P:Ljava/lang/String;

.field protected Q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/ip;

    invoke-direct {v0}, Lcom/tnkfactory/ad/ip;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/VideoAdItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    const-string v0, "N"

    iput-object v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->P:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->Q:I

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/VideoAdItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/tnkfactory/ad/AdItem;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ImageAdItem;-><init>(Lcom/tnkfactory/ad/AdItem;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    const-string v0, "N"

    iput-object v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->P:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->Q:I

    instance-of v0, p1, Lcom/tnkfactory/ad/VideoAdItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tnkfactory/ad/VideoAdItem;

    iget-wide v0, p1, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    iput-wide v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    iget-object v0, p1, Lcom/tnkfactory/ad/VideoAdItem;->P:Ljava/lang/String;

    iput-object v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->P:Ljava/lang/String;

    iget v0, p1, Lcom/tnkfactory/ad/VideoAdItem;->Q:I

    iput v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->Q:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/tnkfactory/framework/vo/ValueObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/tnkfactory/ad/ImageAdItem;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    const-string v0, "N"

    iput-object v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->P:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->Q:I

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/VideoAdItem;->a(Lcom/tnkfactory/framework/vo/ValueObject;)V

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
    const-string v0, "vdo_nsec"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    const-string v0, "vdo_wifi"

    const-string v1, "N"

    invoke-virtual {p1, v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->P:Ljava/lang/String;

    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->Q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->k:I

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->P:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->Q:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tnkfactory/ad/ImageAdItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",vdo_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/VideoAdItem;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",vdo_nsec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",vdo_wifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/VideoAdItem;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/tnkfactory/ad/ImageAdItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tnkfactory/ad/VideoAdItem;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
