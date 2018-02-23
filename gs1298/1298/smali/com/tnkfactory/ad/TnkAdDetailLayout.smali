.class public Lcom/tnkfactory/ad/TnkAdDetailLayout;
.super Ljava/lang/Object;


# instance fields
.field public actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

.field public idAction:I

.field public idActionList:I

.field public idAppDesc:I

.field public idCancel:I

.field public idConfirm:I

.field public idDescButton:I

.field public idIcon:I

.field public idImage:I

.field public idNotice:I

.field public idSubtitle:I

.field public idTag:I

.field public idTitle:I

.field public imgType:I

.field public layout:I

.field public tag:Lcom/tnkfactory/ad/TnkAdTagLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->layout:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idIcon:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idTitle:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idSubtitle:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idTag:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idAction:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idActionList:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idConfirm:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idCancel:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idAppDesc:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idDescButton:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idImage:I

    sget v0, Lcom/tnkfactory/ad/TnkLayout;->IMAGE_NONE:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->imgType:I

    new-instance v0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdTagLayout;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdTagLayout;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->layout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idIcon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idTitle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idSubtitle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idTag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idActionList:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idConfirm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idCancel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idAppDesc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idDescButton:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idImage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->imgType:I

    new-instance v0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdTagLayout;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdTagLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->layout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idTitle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idSubtitle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idTag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idActionList:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idConfirm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idCancel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idAppDesc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idDescButton:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->idImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->imgType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->actionItem:Lcom/tnkfactory/ad/TnkAdDetailItemLayout;

    invoke-virtual {v0, p1, p2}, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->a(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->tag:Lcom/tnkfactory/ad/TnkAdTagLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkAdTagLayout;->a(Landroid/os/Parcel;I)V

    return-void
.end method
