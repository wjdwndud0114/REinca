.class public Lcom/tnkfactory/ad/TnkAdHeaderLayout;
.super Ljava/lang/Object;


# instance fields
.field public idText:I

.field public layout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderLayout;->layout:I

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderLayout;->idText:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderLayout;->layout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderLayout;->idText:I

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderLayout;->layout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderLayout;->idText:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
