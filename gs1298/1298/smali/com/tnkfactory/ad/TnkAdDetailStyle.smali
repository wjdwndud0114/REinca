.class public Lcom/tnkfactory/ad/TnkAdDetailStyle;
.super Lcom/tnkfactory/ad/TnkStyle;


# instance fields
.field public Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

.field public Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

.field public Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

.field public showProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->showProgress:Z

    new-instance v0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdHeaderStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdBodyStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdBodyStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdBodyStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdFooterStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdFooterStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->showProgress:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->showProgress:Z

    new-instance v1, Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    invoke-direct {v1, p1}, Lcom/tnkfactory/ad/TnkAdHeaderStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    iput-object p0, v1, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v1, Lcom/tnkfactory/ad/TnkAdBodyStyle;

    invoke-direct {v1, p1}, Lcom/tnkfactory/ad/TnkAdBodyStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    iput-object p0, v1, Lcom/tnkfactory/ad/TnkAdBodyStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v1, Lcom/tnkfactory/ad/TnkAdFooterStyle;

    invoke-direct {v1, p1}, Lcom/tnkfactory/ad/TnkAdFooterStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    iput-object p0, v1, Lcom/tnkfactory/ad/TnkAdFooterStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->showProgress:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Header:Lcom/tnkfactory/ad/TnkAdHeaderStyle;

    invoke-virtual {v1, p1, v0}, Lcom/tnkfactory/ad/TnkAdHeaderStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Body:Lcom/tnkfactory/ad/TnkAdBodyStyle;

    invoke-virtual {v1, p1, v0}, Lcom/tnkfactory/ad/TnkAdBodyStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->Footer:Lcom/tnkfactory/ad/TnkAdFooterStyle;

    invoke-virtual {v1, p1, v0}, Lcom/tnkfactory/ad/TnkAdFooterStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdDetailStyle;->showProgress:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
