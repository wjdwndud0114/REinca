.class public Lcom/tnkfactory/ad/TnkAdItemStyle;
.super Lcom/tnkfactory/ad/TnkStyle;


# instance fields
.field public Subtitle:Lcom/tnkfactory/ad/TnkStyle;

.field public Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

.field public Title:Lcom/tnkfactory/ad/TnkStyle;

.field public backgroundColorStripe:I

.field public backgroundStripe:I

.field public badgeBestDrawable:I

.field public badgeNewDrawable:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0xa

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeNewDrawable:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeBestDrawable:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundStripe:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundColorStripe:I

    const/16 v0, 0x4f

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->height:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundColor:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    const/16 v1, 0xe

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    const v1, -0xfefeff

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iput v3, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    const v1, -0x79797a

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    new-instance v0, Lcom/tnkfactory/ad/TnkAdTagStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdTagStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdTagStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput v3, v0, Lcom/tnkfactory/ad/TnkAdTagStyle;->textSize:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeNewDrawable:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeBestDrawable:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundStripe:I

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundColorStripe:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeNewDrawable:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeBestDrawable:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundStripe:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundColorStripe:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdTagStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdTagStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdTagStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeNewDrawable:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeBestDrawable:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundStripe:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundColorStripe:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkAdTagStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeNewDrawable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->badgeBestDrawable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundStripe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemStyle;->backgroundColorStripe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
