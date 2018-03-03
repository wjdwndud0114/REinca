.class public Lcom/tnkfactory/ad/TnkAdItemLayout;
.super Ljava/lang/Object;


# instance fields
.field public bgItemEven:I

.field public bgItemOdd:I

.field public colorBg:I

.field public height:I

.field public idIcon:I

.field public idSubtitle:I

.field public idTag:I

.field public idTagLabel:I

.field public idTagPoint:I

.field public idTitle:I

.field public layout:I

.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I

.field public tag:Lcom/tnkfactory/ad/TnkAdTagLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingLeft:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingRight:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingTop:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingBottom:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->layout:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->height:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idIcon:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTitle:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idSubtitle:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTag:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTagPoint:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTagLabel:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemEven:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemOdd:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->colorBg:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingLeft:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingRight:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingTop:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingBottom:I

    new-instance v0, Lcom/tnkfactory/ad/TnkAdTagLayout;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdTagLayout;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingLeft:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingRight:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingTop:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingBottom:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->layout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idIcon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTitle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idSubtitle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTagPoint:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTagLabel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemEven:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemOdd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->colorBg:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingBottom:I

    new-instance v0, Lcom/tnkfactory/ad/TnkAdTagLayout;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdTagLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->layout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTitle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idSubtitle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTagPoint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->idTagLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemEven:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->bgItemOdd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->colorBg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->paddingBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdItemLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkAdTagLayout;->a(Landroid/os/Parcel;I)V

    return-void
.end method
