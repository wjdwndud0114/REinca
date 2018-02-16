.class public Lcom/tnkfactory/ad/TnkAdFooterStyle;
.super Lcom/tnkfactory/ad/TnkStyle;


# instance fields
.field public CancelButton:Lcom/tnkfactory/ad/TnkStyle;

.field public ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0xe

    invoke-direct {p0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    const v1, -0x30304

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    iput v2, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkStyle;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    const v1, -0xfcfcfd

    iput v1, v0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    iput v2, v0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkStyle;

    invoke-direct {v0, p1}, Lcom/tnkfactory/ad/TnkStyle;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    iput-object p0, v0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->ConfirmButton:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdFooterStyle;->CancelButton:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/TnkStyle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
