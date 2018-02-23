.class public Lcom/tnkfactory/ad/TnkAdDetailItemLayout;
.super Ljava/lang/Object;


# instance fields
.field public idAction:I

.field public idTag:I

.field public idTagLabel:I

.field public idTagPoint:I

.field public layout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->layout:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTag:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idAction:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTagPoint:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTagLabel:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->layout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTagPoint:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTagLabel:I

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->layout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTagPoint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdDetailItemLayout;->idTagLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
