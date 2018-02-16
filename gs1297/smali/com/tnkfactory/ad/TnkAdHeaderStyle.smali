.class public Lcom/tnkfactory/ad/TnkAdHeaderStyle;
.super Lcom/tnkfactory/ad/TnkStyle;


# instance fields
.field public Subtitle:Lcom/tnkfactory/ad/TnkStyle;

.field public Title:Lcom/tnkfactory/ad/TnkStyle;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    const/16 v0, 0x4f

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->height:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    const/16 v1, 0xf

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    const v1, -0xfefeff

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    const/16 v1, 0xc

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    const v1, -0x79797a

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Title:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->Subtitle:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
