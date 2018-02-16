.class public Lcom/tnkfactory/ad/TnkAdBodyStyle;
.super Lcom/tnkfactory/ad/TnkStyle;


# instance fields
.field public Desc:Lcom/tnkfactory/ad/TnkStyle;

.field public Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    const/16 v0, 0x4f

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->height:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->textSize:I

    const v0, -0xfefeff

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->textColor:I

    new-instance v0, Lcom/tnkfactory/ad/TnkAdTagStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdTagStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdTagStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput v1, v0, Lcom/tnkfactory/ad/TnkAdTagStyle;->textSize:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    const v1, -0xa9a9aa

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdTagStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkAdTagStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdTagStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Tag:Lcom/tnkfactory/ad/TnkAdTagStyle;

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkAdTagStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->Desc:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
